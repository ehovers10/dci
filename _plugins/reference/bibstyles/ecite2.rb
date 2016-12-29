module Eref2

# ------
# Author
# ------
  def RefName(source)

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

    return %{<span class="author">#{primary} </span>}

  end

end
