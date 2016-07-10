module Jekyll

  class RefTag < Liquid::Tag

    include self.const_get(Jekyll.configuration({})['bibliography']['style']['reference'])

    def initialize(tag_name, id, tokens)

      @tempid = id
      super

    end

    def render(context)
      source = context.registers[:site].config['bibliography']['source']
      bib = context.registers[:site].data[source]

      if context[@tempid].is_a?(String)
        id = context[@tempid]
      else
        id = context[@tempid][0]
      end
      raise "No source bibliography found" if bib.nil?
      raise "Reference not found: #{id}" if bib[id].nil?

      reference = ""
      RefList(bib[id]).each{ |item| reference << %{#{item}} }

      return %{<a name="ref-#{id}"></a>#{reference}}

    end

  end

end

Liquid::Template.register_tag('ref', Jekyll::RefTag)
