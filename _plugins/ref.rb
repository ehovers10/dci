module Jekyll

  class RefTag < Liquid::Tag

    def initialize(tag_name, id, tokens)

      @id = id
      super

    end

  # Full citation
    def render(context)
      output = ""

      @bib = context.registers[:site].data['dissbib']
      raise "No source bibliography found" if @bib.empty?

      output << "<a name='ref-#{@id}'></a>"

    # Authors
      output << "<span class='author'>#{GetAuthorNames(@bib[@id]['Author'])}.&nbsp;</span>"

    # Year
      output << "<span class='year'>#{@bib[@id]['Year']}</span>"

    # Publication




    end

    # Author names
    def GetAuthorNames(author)

      names = author.split(" ")
      name = ""
      multiple = false
      loc = 0
      andLoc = Array.new

    # Number of authors
      names.each_with_index { |word, index|
        if word.strip == "and"
          multiple = true
          andLoc.push(index)
        end
      }

    # Primary author
      if andLoc[0]
        loc = andLoc[0]
      else
        loc = names.length
      end

      name << MiddleNames(names,loc)
      name << names[loc - 1]
      name << names.each_with_index { |bit,index|
        bit unless index = loc - 1 || @van[0] != nil }

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
      @van = [source[index - 2].strip] & ['von', 'van', 'ver']
      if @van[0]
        output << @van[0] << " "
      end
      output
    end

  end

end

Liquid::Template.register_tag('ref', Jekyll::RefTag)
