module Jekyll

  class NoteTag < Liquid::Tag

    def initialize(tag_name, note, tokens)
      label = note.split
      @note = label[0].strip
      @source = label[1].strip
      super
    end

    def render(context)
      context['page']['comments'] << "#{@source}-#{@note}+"
      sourcefolder = context.registers[:site].config['notes']['folder']
      note = context['site']['data'][sourcefolder][@source][@note]
      #raise %{Note: #{note}}
      marker = %{<sup><a id='#{@source}#{@note}' class='tooled note' href='#' onclick='return false;'>#{@source}-#{@note}</a></sup>}
      tipbox = %{<span id="#{@source}#{@note}-tip" class="tooltip comment">#{note}</span>}

      return marker << tipbox
    end
  end
end

Liquid::Template.register_tag('note', Jekyll::NoteTag)
