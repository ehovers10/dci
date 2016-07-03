module Jekyll

  class NoteTag < Liquid::Tag

    def initialize(tag_name, label, tokens)
      @label = label.split
      @note = @label[0].strip
      @source = @label[1].strip
      super
    end

    def render(context)
      context['page']['comments'] << "#{@source}-#{@note}+"

      "<sup><a id='#{@source}#{@note}' class='tooled note' href='#' onclick='return false;'>#{@source}-#{@note}</a></sup>"

    end
  end
end

Liquid::Template.register_tag('note', Jekyll::NoteTag)
