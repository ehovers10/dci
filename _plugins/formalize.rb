module Jekyll

  module FormalizeFilter

    include Formalism

    def formalize(input)
      name = ""
      value = input.split("|")
      #raise "Value: #{value}"
      source = @context.registers[:site].data
      value.each { |item|
        source = source[item]
        name = item
      }

      Molecule(source,name)

    end

  end

end

Liquid::Template.register_filter(Jekyll::FormalizeFilter)
