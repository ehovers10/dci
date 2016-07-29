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
      #title = ""
      body = ""
      pre = ""
      post = ""
      if input.is_a? (Array)
        #raise %{First array: #{input}}
        input.each { |bit|
          if bit.is_a? (Hash)
            bit["fxn"] ? body << Args(bit) : bit.each_pair { |k,v| body << Molecule(v,k) }
          else
            pre = %{<span class="categorical">For all }
            body << %{<span>#{bit}</span>, }
            post = %{</span>}
          end }
      elsif input.is_a? (Hash)
        input["fxn"] ? body << Args(input) : input.each_pair { |k,v| body << Molecule(v,k) }
      else
        body << %{<span class="categorical">#{input}</span>, }
      end
      after = %{</div>}
      before << pre << body << post << after
    end

    def Args(kind)
      towrap = Hash.new
      kind["arg"].each_pair { |k,v|
        if v.is_a? (Array)
          add = ""
          v.each_with_index { |bit,i|
            if bit.is_a? (Hash)
              add << %{<span class="bit">#{Args(bit)}</span>}
            else
              add << %{<span class="bit">#{bit}</span>}
            end }
          towrap.merge!({k => %{<div class="#{k}">#{add}</div>}})
        elsif v.is_a? (Hash)
          towrap.merge!({k => %{<div class="#{k}">#{Args(v)}</div>}})
        else
          towrap.merge!({k => %{<div class="#{k}">#{v.strip}</div>}})
        end }
      Wrap(kind["fxn"],towrap)
    end

    def Wrap(kind,arghash)
      sourcefile = @context.registers[:site].data['formalism']['wraps']
      loclist = ["before","inside","dref","conditions",
        "lhs","conn","rhs","after"]
      locs = {}
      loclist.each { |item| locs.merge!({item => ""}) }
      pre = %|<div class="fxn #{kind}"><div class="pre">#{sourcefile['pre'][kind]}</div>|
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
