module Jekyll
  module PopFilter

    def pop(input)
      id = input.strip.downcase.gsub /\W+/, '-'
      source = @context['site']['snippets'][id]
      raise %{Input: #{input}}
      close = %{<div class="popclose"></div>}
      title = %{<h4>#{id}</h4>}
      box = %{<div class="popbox">#{close}#{title}#{popwrap(input)}</div>}

      lightwrap(id,box)
    end

    def lightwrap(id,input)
      %{<div class="lightbox" id="#{id}-hid">#{input}</div>}
    end

    def popwrap(input)
      %{<div class="popmain">#{input}</div>}
    end

  end
end

Liquid::Template.register_filter(Jekyll::PopFilter)
