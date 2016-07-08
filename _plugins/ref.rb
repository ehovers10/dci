module Jekyll

  class RefTag < Liquid::Tag

    def initialize(tag_name, id, tokens)

      @tempid = id
      super

    end

  # Full citation
    def render(context)
      output = ""
      book = ""

      @bib = context.registers[:site].data['dissbib']
      @id = context[@tempid.strip][0]
      raise "No source bibliography found" if @bib.nil?
      raise "Reference not found: #{@id}" if @bib[@id].nil?

      output << "<a name='ref-#{@id}'></a>"

    # Authors
      output << "<span class='author'>#{GetAuthorNames(@bib[@id]['Author'])}</span>"

    # Year
      output << "<span class='year'> (#{@bib[@id]['Year']}).&nbsp;</span>"

    # Title
      book = "book " if @bib[@id]['Type'] == "book"
      output << "<span class='#{book}title'>#{@bib[@id]['Title']}</span>"
      output << "<span class='dot'>.</span>" unless ".?!".include? @bib[@id]['Title'][-1,1]

    # Publication
      output << "<span class='publication'>#{GetPublication(@bib[@id])}</span>"

    # Pages
      output << "<span 'pages'> pp. #{@bib[@id]['Pages']}.</span>" if @bib[@id]['Pages']

    # Url
      if @bib[@id]['Url'].is_a?(String)
        url = @bib[@id]['Url'].split
      else
        url = @bib[@id]['Url']
      end

      output << "<ul class='url'>"
      url.each{ |link|
        output << "<li><a href='#{link}'>#{link}</a><br /></li>" } if url
      output << "</ul>"

    end

    # Author names
    def GetAuthorNames(author)

      names = author.split(" ")
      name = ""
      multiple = false
      loc = names.length
      andLoc = Array.new

    # Number of authors
      names.each_with_index { |word, index|
        if word.strip == "and"
          multiple = true
          andLoc.push(index)
        end
      }
      loc = andLoc[0] if multiple

    # Authors
      name << MiddleNames(names,loc)
      name << "#{names[loc - 1]},"
      names.each_with_index { |bit,index|
        unless index == loc - 1
          name << " #{bit}"
        end
        }

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

  # Publication
    def GetPublication(id)

      output = "<span class='publication'>&nbsp;"
      case id['Type']

      # Chapter
        when 'chapter'
          output << "<span class='book'>#{id['Booktitle']}</span>"
          if id['Editor']
            output << ", #{id['Editor']}"
            if id['Editor'].include?(" and ")
              output << " (eds.)"
            else
              output << " (ed.)"
            end
          end
          output << ". #{id['Publisher']}." if id['Publisher']

      # Article
        when 'article'
          output << "<span class='journal'>#{id['Journal']}</span>"
          if [id['Volume'],id['Issue'],id['Number']].any?
            output << ", "
            [id['Volume'],id['Issue'],id['Number']].each{ |vol|
              output << "#{vol}." unless vol.nil? }
          else
            output << "."
          end

      # Book
        when 'book'
          output << "#{id['Publisher']}" if id['Publisher']

      end
      output << "</span>"

      output

    end

  end

end

Liquid::Template.register_tag('ref', Jekyll::RefTag)
