module Jekyll
  module RelationFilter

#==============#
# Set defaults #
#==============#

    def source_data()
      @sourcefile = @context.registers[:site].data['predicates']
      @situations = ["s1","s2","s3"]
      @defaultvalue = "&omega;"
      @continue = %{&#10649;}
      @contclass = ["sit","ent"]
      @joinattributes = ["sit","ent"]
      @keep = "keep"
      @skipattr = ["div"]
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
        if kind.include?(k)
          pred = %{#{kind}-#{predicate}}
          v.each_pair { |s,ents|
            ents.each { |e| table.push({"sit" => s,"ent" => e, pred => k}) }
          }
        elsif kind == "all"
          pred = %{#{kind}-#{predicate}}
          v.each_pair { |s,ents|
            ents.each { |e|
              table.push({"sit" => s,"ent" => e, pred => k}) unless k == "+" }
          }
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
          input[1].last.each_key { |key|
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

  # Refine
    def refine(input)
      input[0].delete_if {|key| key == "mod" }
      input.each { |row| row.delete_if { |key| key.include? "+" } }
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
      grouplist = attribute.split(" ")
      table.group_by { |row| row[grouplist[0]] }.each_pair { |key,group|
        group.last.merge!("div" => "div") unless group.last[grouplist[0]] == grouplist[0]
        if grouplist[1]
          group.group_by { |row| row[grouplist[1]] }.each_pair { |key,subgroup|
            unless subgroup.last[grouplist[1]] == grouplist[1] ||
              (subgroup.last["div"] && subgroup.last["div"].include?("div"))
                subgroup.last.merge!("div" => "subdiv")
            end
            subgroup.each { |row| groupedtable.push(row) } }
        else
          group.each { |row| groupedtable.push(row) }
        end
      }
      groupedtable
    end

  # Focus class
    def focus(input,type)
      input.each { |row|
        row.each_pair { |key,val|
          #raise %{#{input[row]}}
          row[key] = %{<span class="focus">#{val}</span>} if type == val } }
      input
    end

  # Compare for homogeneity
    def compare(table,attribute = "sit|+")
      source_data()
      args = attribute.split("|")
      grp = args[0].split(" ")
      comp = args[1].split(" ")
      grouplist = []
      subj = table.first.keys.index(table.first.key("subj"))
      pred = table.first.keys.index(table.first.key("pred"))
      #raise %{#{pred}}
      table.group_by { |row| row[grp[0]] }.each_pair { |key,group|
        if grp[1]
          group.group_by { |row| row[grp[1]] }.each_pair { |subkey,subgroup|
            grouplist.push({subkey => subgroup,"size" => subgroup.size}) }
        else
          grouplist.push({key => group,"size" => group.size})
        end
      }
      #raise %{Grouplist: #{grouplist}}

      grouplist.each { |set|
        pos = 0
        set.first.last.each { |val|
          pr = val.keys[pred]
          su = val.keys[subj]
          unless val[su].nil?
            if val[pr] == comp.last
              val.merge!( pr => wrap("count",val[pr]) )
              pos += 1
            end
          end
        }
        #raise %{Size: #{set["size"]}, Pos: #{pos}}
        set["size"] == pos || pos = 0 ? keep = %{&#x2713;} : keep = %{X}
        set.first.last[set["size"] / 2].merge!(@keep => keep)
      }
      table.first.merge!(@keep => @keep)
      table
    end

    def wrap(type,item)
      case type
      when "count"
        %{<span class="count">#{item}</span>}
      end
    end

#=========#
# Display #
#=========#

    def display_table(table)
      pre = %{<div class="relation"><div class="continued">#{@continue}</div>}
      post = %{</div>}
      headlist = []
      attrlist = []
      table[0].each_key { |k| headlist.push(k) unless @skipattr.include?(k) }
      table[1].each_key { |k| attrlist.push(k) unless @skipattr.include?(k) }
      attrlist.push(@keep)
      header = %{<div class="head">}
      headlist.each { |a|
        header << %{<div class="attribute #{a}">#{a.split("-").last}</div>} }
      header << "</div>"

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
        unless attrib == "keep"
          output = %{<div class="#{table[index]["div"]}">#{output}</div>}
        end
      end

      output
    end

  end
end

Liquid::Template.register_filter(Jekyll::RelationFilter)
