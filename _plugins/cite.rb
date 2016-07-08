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

  # Full citation
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
            output << GetAuthorNames(@bib[@ref]['Author'])
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

  # Author names
    def GetAuthorNames(author)

      names = author.split(" ")
      name = ""
      ands = 0
      loc = 0
      andLoc = Array.new

    # Number of authors
      names.each_with_index { |word, index|
        if word.strip == "and"
          ands += 1
          andLoc.push(index)
        end
      }

    # Primary author
      if andLoc[0]
        loc = andLoc[0]
      else
        loc = names.length
      end

      name << MiddleNames(names,loc) << names[loc - 1]

    # Additional authors
      if ands == 1
        name << " and "
        if andLoc[1]
          loc = andLoc[1]
        else
          loc = names.length
        end
        name << MiddleNames(names,loc) << names[loc - 1]
      elsif ands >= 2
        name << " et al."
      end

    # Return name
      name

    end

  # Middle names
    def MiddleNames(source,index)
      output = ""
      van = [source[index - 2].strip] & ['von', 'van', 'ver']
      if van[0]
        output << van[0] << " "
      end
      output
    end

  end

end

Liquid::Template.register_tag('cite', Jekyll::CiteTag)
