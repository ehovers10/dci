module Jekyll

  class CiteTag < Liquid::Tag

    include self.const_get(Jekyll.configuration({})['bibliography']['style']['citation'])

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

        citation << before << reference << after
      }

      prewrap = "("
      postwrap = ")"

      return prewrap << citation << postwrap

    end

  end
end

Liquid::Template.register_tag('cite', Jekyll::CiteTag)
