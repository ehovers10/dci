module Jekyll

  class GlossTag < Liquid::Tag

    def initialize(tag_name, word, tokens)
      super
      @word = word.strip
    end

    def render(context)
      path = context.registers[:site].config['baseurl'] + "/glossary#"
      sourcefile = context['site']['data']['glossary']
      gloss = "Word not found"
      slug = "not-found"
      m = false
      if sourcefile[@word]
        defn = sourcefile[@word]['definition']
        gloss = @word.strip
        slug = @word.downcase.gsub /\W+/, '-'
      else
        sourcefile.keys.each { |text|
          if text.match(@word.downcase[0,5])
            defn = sourcefile[text]['definition']
            gloss = text
            slug = text.downcase.gsub /\W+/, '-'
            break
          end } 
      end
      marker = %{<a id="#{slug}" href="#{path}#{slug}" class="tooled gloss">#{@word}</a>}
      tipbox = %{<span id="#{slug}-tip" class="tooltip glossary"><b>#{gloss}</b>: #{defn}</span>}

      marker << tipbox
    end

  end

end

Liquid::Template.register_tag('gloss', Jekyll::GlossTag)
