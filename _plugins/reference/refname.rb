module Jekyll

  class RefNameTag < Liquid::Tag


    def initialize(tag_name, id, tokens)

      @tempid = id
      super

    end


    def render(context)
      source = context.registers[:site].config['bibliography']['source']
      bib = context.registers[:site].data[source]

      if context[@tempid].is_a?(String)
        id = context[@tempid]
      else
        id = context[@tempid][0]
      end
      raise "No source bibliography found" if bib.nil?
      raise "Reference not found: #{id}" if bib[id].nil?

      reference = RefName(bib[id])

      return %{"#{id}", "#{reference}"}

    end

    # ------
    # Author
    # ------
      def RefName(source)

        names = source['Author'].split(" ")
        ands = 0
        andLoc = []

      # Number of authors
        names.each_with_index { |word, index|
          if word.strip == "and"
            ands += 1
            andLoc.push(index)
          end
        }

      # Primary author
        andLoc[0] ? loc = andLoc[0] - 1: loc = names.length - 1
        prefix = ""
        for i in 0..loc-1
          if ['von', 'van', 'ver', 'der'].include? names[i].strip
            prefix << %{#{names[i]} }
          end
        end
        last = %{#{names[loc]}}
        primary = %{#{prefix}#{last}}

        return %{<span class="author">#{primary}</span>}

      end

  end

end

Liquid::Template.register_tag('refname', Jekyll::RefNameTag)
