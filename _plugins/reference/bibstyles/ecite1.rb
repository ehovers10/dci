module CiteEH

# --------------
# Cite Structure
# --------------
  def CiteList(id,name,pages,range)
    name ? a = CiteAuthor(id) : ""
    pages ? pp = CitePages(range) : ""

    return [a, CiteDate(id), pp]
  end

# ------
# Author
# ------
  def CiteAuthor(source)

    names = source['Author'].split(" ")
    ands = 0
    andLoc = []

  # Number of authors
    names.each_with_index { |word, index|
      if word.strip == "and"
        ands += 1
        andLoc.push(index)
      end
    }

  # Primary author
    andLoc[0] ? loc = andLoc[0] - 1: loc = names.length - 1
    prefix = ""
    for i in 0..loc-1
      if ['von', 'van', 'ver', 'der'].include? names[i].strip
        prefix << %{#{names[i]} }
      end
    end
    last = %{#{names[loc]}}
    primary = %{#{prefix}#{last}}

  # Additional authors
    if ands == 1
      prefix2 = ""
      for i in loc+2..names.length-1
        if ['von', 'van', 'ver', 'der'].include? names[i].strip
          prefix2 << %{#{names[i]} }
        end
      end
      last2 = %{#{names.last}}
      secondary = %{ and #{prefix2}#{last2}}
    elsif ands >= 2
      secondary = %{ et al.}
    end

    return %{<span class="author">#{primary}#{secondary} </span>}

  end

# ----
# Date
# -----
  def CiteDate(source)
    return %{<span class="date"><span class='year'>#{source['Year']}</span></span>}
  end

# -----
# Pages
# -----
  def CitePages(range)
    return %{<span class='pages'>, #{range}</span>}
  end

end
