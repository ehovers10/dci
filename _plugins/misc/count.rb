module Jekyll

  class CountTag < Liquid::Tag

    def initialize(tag_name, counter, tokens)
      @inc = counter
    end

    def render(context)
      context['page']['count'][@inc.strip] += 1
    end

  end

end

Liquid::Template.register_tag('count', Jekyll::CountTag)
