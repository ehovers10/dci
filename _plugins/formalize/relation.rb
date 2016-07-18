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
    end

#=======#
# Build #
#=======#

  # Predicate intensions
    def intension(input,kind = @kind)
      source_data()
      predicates = input.split("|")
      table = []
      @situations.each { |situation|
        entities(situation,predicates,kind).each { |element|
          row = {"sit" => situation,"ent" => element}
          predicates.each { |pred|
            elemcheck = false
            if @sourcefile[pred][kind][situation].include? element
              row.merge!({pred => kind})
              elemcheck = true
            end
            row.merge!({pred => nil}) unless elemcheck
          }
          table.push(row)
        }
      }
      table
    end

  # Entities in any extension for each situation
    def entities(situation,predicates,kind = "all")
      entlist = []
      predicates.each { |pred|
        if @sourcefile[pred][situation]
          @sourcefile[pred][situation].each { |ent| entlist.push(ent) }
        else
          @sourcefile[pred].each_key { |k|
            if kind == "all" || kind.include?(k)
              @sourcefile[pred][k][situation].each { |ent| entlist.push(ent) }
            end
          }
        end
      }
      entlist.flatten.uniq.sort
    end

  # Outer join (full,left, or right)
    def full_outer_join(input,attribute)
      source_data()
      tables = input.split("|")
      #raise %{Input: #{input}}
      joinedtable = []
      tables[0].each { |t1r|
        tables[1].each { |t2r|
          if t1r[attribute] == t2r[attrbute]
            joinedtable.push( t1r.merge!(t2r) )
          end
        }
      }
      joinedtable.uniq
    end

#============#
# Manipulate #
#============#

  # Restrict by situation
    def situ(input,sits = @situations)
      input.keep_if { |row| sits.include? (row["sit"]) }
    end

  # Group by any attribute
    def group(table,attribute = "sit")
      source_data()
      divider = {}
      table.first.each_key { |attrib| divider.merge!({attrib => @divider})}
      groupedtable = []
      table.group_by { |row| row[attribute] }.each_value { |group|
        group.each { |row| groupedtable.push(row) }
        groupedtable.push(divider) }
      groupedtable
    end

#=========#
# Display #
#=========#

    def display_table(table)
      pre = %{<div class="relation"><div class="continued">#{@continue}</div>}
      post = %{</div>}
      header = %{<div class="head">}
      table.first.each_key { |k| header << %{<div class="attribute">#{k}</div>} }
      header << "</div>"

      body = ""
      table.each_with_index { |row,i|
        body << display_row(table,i) }

      pre << header << body << post
    end

    def display_row(table,index)
      output = %{<div class="state">}
      table[index].each_pair { |attrib,val|
        val.nil? ? ent = @defaultvalue : ent = val
        output << %{<div class="entity">#{adjust_val(table,index,attrib,val)}</div>}
      }
      output << %{</div>}
      output
    end

    def adjust_val(table,index,attrib,val)
      if val.nil?
        @defaultvalue
      elsif ( table[index - 1]["sit"] == val )
        @continue
      else
        val
      end
    end

  end
end

Liquid::Template.register_filter(Jekyll::RelationFilter)
