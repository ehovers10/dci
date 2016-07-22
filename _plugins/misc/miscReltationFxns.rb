# Entities in any extension for each situation
  def entities(situation,predicates,kind)
    entlist = []
    predicates.each { |pred|
      if @sourcefile[pred][situation]
        @sourcefile[pred][situation].each { |ent| entlist.push(ent) }
      else
        @sourcefile[pred][situation][kind].each_key { |k|
          if kind == "all" || kind.include?(k)
            @sourcefile[pred][k][situation].each { |ent| entlist.push(ent) }
          end
        }
      end
    }
    entlist.flatten.uniq.sort
  end

  # Join
    def join (input,type = "inner")
      source_data()
      case type
      when "left"
        jointable = inner(input).push(outer(input))
      when "right"
        jointable = inner(input.reverse).push(outer(input.reverse))
      when "full"
        leftjoin = inner(input).push(outer(input))
        rightjoin = inner(input.reverse).push(outer(input.reverse))
        jointable = leftjoin.push(rightjoin)
      when "inner"
        jointable = inner(input)
      end
      jointable.flatten.uniq.delete_if { |row| row.nil? }.sort_by { |x|
        [x["sit"],x["ent"]] }
    end
