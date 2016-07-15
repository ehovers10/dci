module Jekyll
  module ExFilter

    def example(input, element = "sent")

      sourcefile = @context.registers[:site].config['examples']
      value = @context.registers[:site].data[sourcefile][input][element]

      output = ""

      value.each{ |item|
        output << %{<div class="item">}
        if item.is_a?(String)
          output << %{<span class="content">#{item}</span>}
        elsif item[0] == "external"
          output << item[1]
        else
          output << %{<span class="name">#{item.keys[0]}: </span><span class="content">#{item.values[0]}</span>}
        end
        output << %{</div>}
      }

      before = %{<div class="example">}
      after = %{</div>}

      before << output << after

    end
  end
end

Liquid::Template.register_filter(Jekyll::ExFilter)
