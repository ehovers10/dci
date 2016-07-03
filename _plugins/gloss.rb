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
      @path = context.registers[:site].config['baseurl'] + "/appendices/glossary.html#"

      "<a href='#{@path}#{@slice}' title='#{@word}' class='gloss'>#{@word}</a>"

    end

  end

end

Liquid::Template.register_tag('gloss', Jekyll::GlossTag)
