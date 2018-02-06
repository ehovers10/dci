module Jekyll
  module PopFilter

    def popbox(input,goop = false)
      if goop
        sourcefolder = @context.registers[:site].collections[goop]
        id = input.strip.downcase.gsub /\W+/, '-'
        title = input
        piece = ""
        triggerpre = "Appendix: "
        sourcefolder.docs.each { |snip|
          if snip.data['title']
            if snip.data['title'].include? title
              piece = snip.output
            end
          else 
            piece = "Item not found" 
          end }
      else
        id = input[0,25].strip.downcase.gsub /\W+/, '-'
        title = input[0,25] << "..."
        piece = input
        triggerpre = "Pop out: "
      end

      trigger = %{<a class="pop" id="#{id}" href="#append-#{id}">#{triggerpre}#{title}</a>}
      close = %{<div class="popclose"></div>}
      box = %{#{close}<div class="popbox"><h4>#{title}</h4>#{popwrap(piece)}</div>}

      %{<div class="box">} << trigger << lightwrap(id,box) << "</div>"
    end

    def lightwrap(id,input)
      %{<div class="lightbox" id="#{id.strip.downcase.gsub /\W+/, '-'}-hid">#{input}</div>}
    end

    def popwrap(input)
      %{<div class="popmain">#{input}</div>}
    end

    def appendix(input,goop = false)
      if goop
        sourcefolder = @context.registers[:site].collections[goop]
        id = input.strip.downcase.gsub /\W+/, '-'
        title = input
        piece = ""
        sourcefolder.docs.each { |snip|
          #raise "Snip: #{snip}"
          if snip.url.include? id
            piece = snip.output
          end }
      else
        id = input[0,25].strip.downcase.gsub /\W+/, '-'
        title = input[0,25] << "..."
        piece = input
      end

      %{<div class="appendix"><h4>#{title}</h4><div>piece</div></div>}
    end
  end
end

Liquid::Template.register_filter(Jekyll::PopFilter)
