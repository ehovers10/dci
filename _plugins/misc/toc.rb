#require 'nokogiri'

module Jekyll

  module MakeTOC
    def toc_it_up(content)

      config = @context.registers[:site].config



    end
  end
end

Liquid::Template.register_filter(Jekyll::MakeTOC)
