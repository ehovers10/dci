module Jekyll
  module Formalism

    def Molecule(input, name = "")

      before = %{<div class="molecule" id="#{name.strip.downcase.gsub /\W+/, '-'}">}
      title = %{<div class="title">#{name}</div>}
      body = ""
      input.each { |bit| body << Atom(bit) }
      after = %{</div>}

      before << title << body << after
    end

    def Atom(input)

      before = %{<div class="atom">}
      after = %{</div>}
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
        input.each { |bit| body << %{<span>#{bit}</span>, } }
      end

      before << body << after
    end

    def Args(kind)
      towrap = Hash.new
      i = 1

      #raise %{Kind: #{kind}}

      kind["arg"].each_pair { |k,v|
        if v.is_a? (Array)
          v.each { |bit|
            if bit.is_a? (Hash)
              bit["arg"].each_pair { |bk,bv|
                add = {k => %{<div class="#{bk}">#{Args(bv)}</div>}}
                towrap.merge!(add) }
            else
              towrap = towrap.merge({k => %|<div class="categorical">#{bit}</div>|})
            end }
        else
          if v.is_a? (Hash)
            add = {k => %{<div class="#{k}">#{Args(v)}</div>}}
            towrap.merge!(add)
          else
            towrap = towrap.merge({k => %|<div class="categorical">#{v}</div>|})
          end
        end
        i += 1
      }

      Wrap(kind["fxn"],towrap)
    end

    def merge_recursively(a, b)
      a.merge(b) {|key, a_item, b_item| merge_recursively(a_item, b_item) }
    end

    def Wrap(kind,arghash)
      sourcefile = @context.registers[:site].data['formalism']['wraps']
      #raise %{Kind: #{kind} ArgHash: Source: #{sourcefile['pre'][kind]}}
      loclist = ["before","inside","dref","conditions","lhs","conn","rhs","outside"]
      locs = {}
      loclist.each { |item| locs.merge!({item => ""}) }
      pre = %|<div class="wrap"><div class="pre">#{sourcefile['pre'][kind]}</div>|
      post = %|<div class="post">#{sourcefile['post'][kind]}</div></div>|
      locs.each_key { |loc|
        #raise %{Arghash: #{arghash} Locs: #{locs}}
        locs.update({loc => arghash[loc]}) if arghash[loc]
      }
      #raise %{Locs: #{locs} Before: #{locs["before"]} Inside: #{locs["inside"]} }
      locs["before"] << pre << locs["inside"] << locs["dref"] << locs["conditions"] << locs["lhs"] << locs["conn"] << locs["rhs"] << post << locs["outside"]
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
