module Jekyll
  module FormalizeFilter

    def Molecule(input, name = "")

      before = %{<div class="molecule" id="#{name.strip.downcase.gsub /\W+/, '-'}">}
      title = %{<div class="title">#{name.capitalize}</div>}
      body = ""
      #raise %{Input array: #{input}}
      if input.is_a? (Array)
        input.each { |bit| body << Atom(bit) }
      elsif input.is_a? (Hash)
        input["fxn"] ? body << Atom(input) : input.each_pair { |k,v| body << Molecule(v,k) }
      else
        body << input
      end
      after = %{</div>}

      before << title << body << after
    end

    def Atom(input)

      before = %{<div class="atom">}
      title = ""
      body = ""
      if input.is_a? (Array)
        input.each { |bit|
          if bit.is_a? (Hash)
            bit.key?("fxn") ? body << Args(bit) : body << Molecule(bit)
          else
            body << %{<span>#{bit}</span>, }
          end }
      elsif input.is_a? (Hash)
        input.key?("fxn") ? body << Args(input) : body << Molecule(input)
      else
        body << %{<span>#{input}</span>, }
      end
      after = %{</div>}
      before << body << after
    end

    def Args(kind)
      towrap = Hash.new
      kind["arg"].each_pair { |k,v|
        if v.is_a? (Array)
          add = ""
          v.each_with_index { |bit,i|
            if bit.is_a? (Hash)
              add << %{<div class="#{k}#{i}">#{Args(bit)}</div>}
            else
              add << %{<div class="#{k}#{i}">#{bit}</div>}
            end }
          towrap.merge!({k => %{<div class="#{k}">#{add}</div>}})
        elsif v.is_a? (Hash)
          towrap.merge!({k => %{<div class="#{k}">#{Args(v)}</div>}})
        else
          towrap.merge!({k => %{<div class="#{k}">#{v}</div>}})
        end }
      Wrap(kind["fxn"],towrap)
    end

    def Wrap(kind,arghash)
      sourcefile = @context.registers[:site].data['formalism']['wraps']
      loclist = ["before","inside","dref","conditions",
        "lhs","conn","rhs","after"]
      locs = {}
      loclist.each { |item| locs.merge!({item => ""}) }
      pre = %|<div class="wrap #{kind}"><div class="pre">#{sourcefile['pre'][kind]}</div>|
      post = %|<div class="post">#{sourcefile['post'][kind]}</div></div>|
      locs.each_key { |loc| locs.update({loc => arghash[loc]}) if arghash[loc] }
      locs["before"] <<
        pre <<
        locs["inside"] <<
        locs["dref"] <<
        locs["conditions"] <<
        locs["lhs"] <<
        locs["conn"] <<
        locs["rhs"] <<
        post <<
        locs["after"]
    end

    class String
      def capitalize_words
        this.split.map { |x| x.capitalize }.join(" ")
        # or:     .map(&:capitalize)
      end

      def slug
        this.strip.downcase.gsub /\W+/, '-'
      end
    end

  end
end
