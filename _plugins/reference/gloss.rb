module Jekyll

  class GlossTag < Liquid::Tag

    def initialize(tag_name, word, tokens)
      super
      @word = word.strip
      @lower = @word.downcase
      @slug = @lower.gsub /\W+/, '-'
      @sing = @slug.gsub /s+$/, ''
      @slice = @lower[0, 5]
    end

    def render(context)
      path = context.registers[:site].config['baseurl'] + "/appendices/glossary.html#"
      sourcefile = context['site']['data']['glossary']
      sourcefile[@word] ? defn = sourcefile[@word]['definition'] : defn = "Word not found"
      marker = %{<a id="#{@slug}" href="#{path}#{@slice}" class="tooled gloss">#{@word}</a>}
      tipbox = %{<span id="#{@slug}-tip" class="tooltip glossary">#{defn}</span>}

      marker << tipbox
    end

  end

end

Liquid::Template.register_tag('gloss', Jekyll::GlossTag)
