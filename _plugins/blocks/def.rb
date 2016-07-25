module Jekyll

  class ExTag < Liquid::Block

    def initialize(tag_name, title, tokens)
      super
      @title = title
    end

    def render(context)
      @num = context['page']['count']['ex']
      context['page']['count']['ex'] += 1
      output = "<div class='def' id='#{@title.strip.downcase.gsub /\W+/, '-'}-ex'><div class='title'><span class='head'>Example #{@num}&nbsp;</span><span>(#{@title.strip})</span></div><div class='body fence'>" + super + "</div></div>"
      output << %{<div id="#{@title.strip.downcase.gsub /\W+/, '-'}-show-tip" class="tooltip defn">} + super + %{</div>}
      output
    end

  end

  class DefTag < Liquid::Block

    def initialize(tag_name, title, tokens)
      super
      @title = title
    end

    def render(context)
      @num = context['page']['count']['def']
      context['page']['count']['def'] += 1
      output = "<div class='def' id='#{@title.strip.downcase.gsub /\W+/, '-'}-def'><div class='title'><span class='head'>Definition #{@num}&nbsp;</span><span>(#{@title.strip})</span></div><div class='body fence'>" + super + "</div></div>"
      output << %{<div id="#{@title.strip.downcase.gsub /\W+/, '-'}-show-tip" class="tooltip defn">} + super + %{</div>}
      output
    end

  end

  class ObsTag < Liquid::Block

    def initialize(tag_name, title, tokens)
      super
      @title = title
    end

    def render(context)
      @num = context['page']['count']['obs']
      context['page']['count']['obs'] += 1
      output = "<div class='def' id='#{@title.strip.downcase.gsub /\W+/, '-'}-obs'><div class='title'><span class='head'>Observation #{@num}&nbsp;</span><span>(#{@title.strip})</span></div><div class='body fence'>" + super + "</div></div>"
      output << %{<div id="#{@title.strip.downcase.gsub /\W+/, '-'}-show-tip" class="tooltip defn">} + super + %{</div>}
      output
    end

  end

  class TableTag < Liquid::Block

    def initialize(tag_name, title, tokens)
      super
      @title = title
    end

    def render(context)
      @num = context['page']['count']['table']
      context['page']['count']['table'] += 1
      output = "<div class='def' id='#{@title.strip.downcase.gsub /\W+/, '-'}-table'><div class='title'><span class='head'>Table #{@num}&nbsp;</span><span>(#{@title.strip})</span></div><div class='body'>" + super + "</div></div>"
      output
    end

  end

end

Liquid::Template.register_tag('ex', Jekyll::ExTag)
Liquid::Template.register_tag('def', Jekyll::DefTag)
Liquid::Template.register_tag('obs', Jekyll::ObsTag)
Liquid::Template.register_tag('table', Jekyll::TableTag)
