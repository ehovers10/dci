module Jekyll

  class CiteTag < Liquid::Tag

    def initialize(tag_name, id, tokens)
      @name = true

      if id.include? "+"
        @pieces = id.split("+")
      else
        @pieces = [id]
      end

      super

    end

    def render(context)

      output = "("

      @bib = context.registers[:site].data['dissbib']
      if @bib == nil
        raise "No source bibliography found"
      end

      @pieces.each { |piece|

        if piece.strip.include? "|"
          @item = piece.split("|")
          @ref = @item.first.strip
        else
          @item = [piece.strip]
          @ref = piece.strip
        end

        context['page']['references'] << "#{@ref}+"

        output << "<a id='#{@ref}' class='ref tooled' href='#ref-#{@ref}'>"

        @item.each { |item|
          if item.include? "noname"
            @name = false
          end
        }

        if @bib[@ref] == nil
          raise "No citation found: #{@ref}"
        else

          if @name
            output << "<span class='author'>"
            authorNames = @bib[@ref]['Author'].split
            if authorNames.length == 3
              output << authorNames[2]
            elsif authorNames.length == 2
              output << authorNames[1]
            end
            output << "&nbsp;</span>"
          end

          output << "<span class='year'>"
          output << "#{@bib[@ref]['Year']}"
          output << "</span>"
        end

        @item.each { |item|
          if item.include? "pages"
            output << "<span class='pagenum'>,&nbsp;#{item.strip[/\s.*$/]}</span>"
          end
        }

        output << "</a>"

        if piece != @pieces.last
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
