module Jekyll
  module RelationFilter

#==============#
# Set defaults #
#==============#

    def source_data()
      @sourcefile = @context.registers[:site].data['predicates']
      @situations = ["s1","s2","s3"]
      @kind = "+"
      @defaultvalue = "&omega;"
      @divider = %{<div class="divider"></div>}
      @continue = %{&#10649;}
      @contclass = ["sit","ent"]
      @joinattributes = ["sit","ent"]
      @keep = "keep"
    end

#=======#
# Build #
#=======#

  # Intensions
    def intension(predicate,kind)
      source_data()
      table = []
      header = {"sit" => "sit", "ent" => "ent", %{#{kind}-#{predicate}} => predicate}
      @sourcefile[predicate].each_pair { |k,v|
        if kind == "all" || kind.include?(k)
          pred = %{#{kind}-#{predicate}}
          v.each_pair { |s,ents|
            if @situations.include? (s)
              ents.each { |e| table.push({"sit" => s,"ent" => e, pred => k}) }
            end }
        end }
      joint = smooth_table(table)
      joint.insert(0,header)
    end

  # Concatenate
    def concat (ltable,rtable)
      tlist = [ltable,rtable]
      tlist
    end

  # Predicate
    def predicate (input)
      table = []
      header = {"sit" => "sit", "ent" => "ent", "subj" => "subj", "pred" => "pred"}
      leftjoin = inner(input).push(outer(input))
      rightjoin = inner(input.reverse).push(outer(input.reverse))

      table.push(leftjoin.push(rightjoin))
      joint = smooth_table(table)
      joint.delete_at(-1)
      joint.insert(0,header)
    end

  # Modify
    def modify (input)
      table = []
      header = {"sit" => "sit", "ent" => "ent", "mod" => "mod", "subj" => "subj"}
      leftjoin = inner(input).push(outer(input))
      rightjoin = inner(input.reverse).push(outer(input.reverse))

      table.push(leftjoin.push(rightjoin))
      joint = smooth_table(table)
      joint.delete_at(-1)
      joint.insert(0,header)
    end

  # Smooth table
  def smooth_table(input)
    input.flatten.uniq.delete_if { |row| row.nil? }.sort_by { |x|
      [x["sit"],x["ent"]] }
  end

  # Inner
    def inner(input)
      source_data()
      joinedtable = []
      input[0].each { |t1r|
        input[1].each { |t2r|
          skiprow = false
          @joinattributes.each { |attr| skiprow = true if t1r[attr] != t2r[attr] }
          joinedtable.push( t1r.merge(t2r) ) unless skiprow
        }
      }
      joinedtable.uniq
    end

  # Outer
    def outer(input)
      source_data()
      joinedtable = []
      input[0].each { |t1r|
        skiprow = 0
        input[1].each { |t2r|
          mismatch = false
          @joinattributes.each { |attr| mismatch = true if t1r[attr] != t2r[attr] }
          if mismatch
            skiprow += 1
          end
        }
        if skiprow == input[1].size
          temprow = {}
          input[1][0].each_key { |key|
            temprow = t1r.merge({key => nil}) unless @joinattributes.include? key
          }
        end
        joinedtable.push( temprow )
      }
      joinedtable.uniq
    end

#============#
# Manipulate #
#============#

  # Restrict by situation
    def situ(input,sits = @situations)
      input.each { |row| row.delete_if { |key| key == @keep } }
      input.keep_if { |row|
        sits.include?(row["sit"]) || row == input[0] }
    end

  # Intersect
    def intersect(input)
      num = []
      input.each { |row|
        vals = row.values
        num.push(vals.count(nil))
      }
      #raise %{Nums: #{num}}
      input.keep_if { |row|
        num[input.index(row)] == 0 || row == input[0] }
    end

  # Group by any attribute
    def group(table,attribute = "sit")
      source_data()
      groupedtable = []
      table.group_by { |row| row[attribute] }.each_pair { |key,group|
        group.last.merge!("div" => "") unless group.last["sit"] == "sit"
        group.each { |row| groupedtable.push(row) }
      }
      groupedtable
    end

  # Compare for homogeneity
    def compare(table,attribute)
      source_data()
      #raise %{#{table.group_by { |row| row["sit"]}.each_key {|k| k}}}
      table.group_by { |row| row["sit"] }.each_pair { |key,group|
        #raise %{#{group[0]}}
        count = group.size
        pos = 0
        group.each { |row|
          if row["ent"].length == 1
            row.merge!("ent" => %{<span class="count">#{row["ent"]}</span>})
          end
          if row[attribute] == "+"
            pos += 1
            row.merge!(attribute => %{<span class="count">#{row[attribute]}</span>})
          end }
          count == pos || pos = 0 ? keep = %{&#x2713;} : keep = "X"
          group[count / 2].merge!(@keep => keep)
      }
      table.first.merge!(@keep => @keep)
      table
    end

#=========#
# Display #
#=========#

    def display_table(table)
      pre = %{<div class="relation"><div class="continued">#{@continue}</div>}
      post = %{</div>}
      headlist = []
      attrlist = []
      table[0].each_key { |k| headlist.push(k) }
      table[1].each_key { |k| attrlist.push(k) }
      attrlist.push(@keep)
      header = %{<div class="head">}
      headlist.each { |a|
        header << %{<div class="attribute #{a}">#{a.split("-").last}</div>} }
      header << "</div>"

      #raise %{Table #{table}}
      body = ""
      table.each_with_index { |row,i|
        next if i == 0
        body << display_row(table,i,attrlist,headlist) }

      pre << header << body << post
    end

    def display_row(table,index,attrlist,headlist)
      output = %{<div class="state">}
      #raise %{Row:#{table}}
      headlist.each_index { |j|
        table[index].each_pair { |attrib,val|
          if attrib == attrlist[j]
            val.nil? ? ent = @defaultvalue : ent = val
            output << %{<div class="entity #{attrib}">#{adjust_val(table,index,attrib,val)}</div>}
          end
      } }
      output << %{</div>}
      output
    end

    def adjust_val(table,index,attrib,val)
      if val.nil?
        output = @defaultvalue
      elsif ( table[index - 1]["sit"] == val )
        output = @continue
      else
        output = val
      end

      if table[index].has_key? "div"
        output = %{<div class="divider">#{output}</div>}
      end

      output
    end

  end
end

Liquid::Template.register_filter(Jekyll::RelationFilter)
