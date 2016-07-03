module Jekyll

  class CiteTag < Liquid::Tag

    def initialize(tag_name, id, tokens)
      @name = true

      if id.include? "|"
        pieces = id.split("|")
      else
        pieces = [id]
      end

      idlist = pieces.first
      if idlist.include? ","
        @ids = idlist.split(",")
      else
        @ids = [idlist]
      end

      pieces.each { |piece|
        if piece.include? "pages"
          range = piece.strip[/\s.*$/]
          if range.include? "-"
            @pages = "pp. #{range}"
          else
            @pages = "p. #{range}"
          end
        elsif piece.include? "noname"
          @name = false
        end
      }

      super

    end

    def render(context)

      output = ""
      @bib = context.registers[:site].data['dissbib']

      @ids.each { |id|
        context['page']['references'] << "#{id.chop}+"

        output << "(<a id='#{id.chop}' class='ref tooled' href='#ref-#{id.chop}'>"

        if @name
          output << "<span class='author'>"
          authorNames = @bib[id.strip]['Author'].split
          if authorNames.length == 3
            output << authorNames[2]
          else
            output << authorNames[1]
          end
          output << "&nbsp;</span>"
        end

        output << "<span class='year'>"
        output << "#{@bib[id.strip]['Year']}"
        output << "</span>"

        if @pages
          output << "<span class='pagenum'>,&nbsp;#{@pages}</span>"
        end

        output << "</a>"

        if id != @ids.last
          output << ",&nbsp;"
        else
          output << ")"
        end

      }

      output

    end

  end

end

Liquid::Template.register_tag('cite', Jekyll::CiteTag)
