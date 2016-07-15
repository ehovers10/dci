module Jekyll
  module FormalizeFilter

    def formalize(input,customize = "")

      sourcefile = @context.registers[:site].config['formalism']['data']
      name = ""
      value = input.split("|")
      source = @context.registers[:site].data[sourcefile]
      value.each { |item|
        source = source[item]
        name = item unless customize.include? "notitle"
      }

      Molecule(source,name)

    end

  end
end

Liquid::Template.register_filter(Jekyll::FormalizeFilter)
