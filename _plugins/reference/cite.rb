module Jekyll

  class CiteTag < Liquid::Tag

    #include const_get(Jekyll.configuration({})['bibliography']['style']['citation'])

    def initialize(tag_name, id, tokens)

      if id.include? "+"
        @refs = id.split("+")
      else
        @refs = [id]
      end

      super

    end

  # Full citation
    def render(context)

      source = context.registers[:site].config['bibliography']['source']
      bib = context.registers[:site].data[source]
      citation = ""

      raise "No source bibliography found" if bib.nil?

      @refs.each_with_index { |ref,i|
        name = true
        pages = false
        range = ""
        if ref.include? "|"
          item = ref.split("|")
          id = item.first.strip
          item.each { |app|
            if app.include? "noname"
              name = false
            elsif app.include? "pages"
              pages = true
              range = app.strip[/\s.*$/]
            end
          }
        else
          id = ref.strip
        end

        # Add citation to reference list
        context['page']['references'] << "#{id}+"
        raise "No citation found: #{id}" if bib[id].nil?

        reference = ""
        CiteList(bib[id],name,pages,range).each{ |item| reference << %{#{item}} }

        before = %{<a id='#{id}' class='ref tooled' href='#ref-#{id}'>}
        after = %{</a>#{", " unless i == @refs.length - 1}}

        #tooltip = tool_tip(id,reference)

        citation << before << reference << after
      }

      prewrap = "("
      postwrap = ")"

      return prewrap << citation << postwrap

    end

    #---------
    # Tooltips
    #---------
      def tool_tip(id,reference)
        before = %{<span id='#{id}-tip' class='tooltip reference'>}
        after = %{</span>}

        before << reference << after
      end

    # --------------
    # Cite Structure
    # --------------
      def CiteList(id,name,pages,range)
        name ? a = CiteAuthor(id) : ""
        pages ? pp = CitePages(range) : ""

        return [a, CiteDate(id), pp]
      end

    # ------
    # Author
    # ------
      def CiteAuthor(source)

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

      # Additional authors
        if ands == 1
          prefix2 = ""
          for i in loc+2..names.length-1
            if ['von', 'van', 'ver', 'der'].include? names[i].strip
              prefix2 << %{#{names[i]} }
            end
          end
          last2 = %{#{names.last}}
          secondary = %{ and #{prefix2}#{last2}}
        elsif ands >= 2
          secondary = %{ et al.}
        end

        return %{<span class="author">#{primary}#{secondary} </span>}

      end

    # ----
    # Date
    # -----
      def CiteDate(source)
        return %{<span class="date"><span class='year'>#{source['Year']}</span></span>}
      end

    # -----
    # Pages
    # -----
      def CitePages(range)
        return %{<span class='pages'>, #{range}</span>}
      end

  end
end

Liquid::Template.register_tag('cite', Jekyll::CiteTag)
