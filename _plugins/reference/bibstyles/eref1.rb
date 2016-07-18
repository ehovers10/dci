module Eref1

# --------------
# Reference List
# --------------
  def RefList(id)
    return [RefAuthor(id),
            RefDate(id),
            RefTitle(id),
            RefVolume(id),
            RefEditor(id),
            RefPublication(id),
            RefPages(id),
            RefLink(id)]
  end

# ------
# Author
# ------
  def RefAuthor(source)
    names = source['Author'].split(" ")
    multiple = false
    andLoc = []

  # Number of authors
    names.each_with_index { |word, index|
      if word.strip == "and"
        multiple = true
        andLoc.push(index)
      end
    }
    multiple ? loc = andLoc[0] - 1: loc = names.length - 1

  # Primary Author
    prefix = ""
    for i in 0..loc-1
      if ['von', 'van', 'ver', 'der'].include? names[i].strip
        prefix << %{#{names[i]} }
      end
    end
    last = %{#{prefix}#{names[loc]},}
    first = ""
    for i in 0..loc-1
      first << %{ #{names[i] unless prefix.include? names[i] }}
    end
    primary = last << first

  # Secondary authors
    secondary = ""
    for i in loc+1..names.length
      secondary << %{ #{names[i]}}
    end

    return %{<span class='author'>#{primary}#{secondary}</span>}

  end

# ----
# Date
# ----
  def RefDate(source)
    date = [<<-MONTH, <<-YEAR]
      <span class='month'>#{source['Month']}</span>
    MONTH
      <span class='year'>#{source['Year']}</span>
    YEAR

    return %{<span class='date'>(#{date[0].strip.chomp << " " if source['Month']}#{date[1].chomp.strip}). </span>}
  end

# -----
# Title
# -----
  def RefTitle(source)
    titleamend = %{}

    return %{<span class="title#{" book" if source['Type'] == "book"}">#{source['Title']}</span>#{"." unless ".?!".include? source['Title'][-1,1]} }
  end

# ------
# Volume
# ------
  def RefVolume(source)
    vol = ""

    case source['Type']

    # Chapter
      when 'chapter'
        vol << %{<span class="title book">#{source['Booktitle']}</span>#{"." unless ".?!".include? source['Booktitle'][-1,1]} }

    # Article
      when 'article'
        # Journal
        vol << "<span class='journal'>#{source['Journal']}"

        # Edition
        nums = [source['Volume'],source['Issue'],source['Number']]
        if nums.any?
          vol << %{, <span class='edition'>}
          nums.each_with_index{ |bit,i|
            unless bit.nil?
              vol << %{#{bit}.}
            end
          }
          vol << "</span> </span>"
        else
          vol << %{. </span>}
        end

    # Unpublished
      when 'unpublished'
        vol << "<span class='unpub'>Unpublished manuscript. </span>"
    end

    return vol

  end

# ------
# Editor
# ------
  def RefEditor(source)
    ed = ""
    if source['Editor']
      ed << %{<span class="editor">#{source['Editor']} (ed#{"s" if source['Editor'].include?(" and ")}). </span>}
    end
    return ed
  end

# -----------
# Publication
# -----------
  def RefPublication(source)
    pub = ""
    pubs = [<<-CO, <<-LOC]
      <span class='publisher'>#{source['Publisher']}</span>
    CO
      <span class='location'>#{": " if source['Publisher']}#{source['Location']}</span>
    LOC

    if source['Publisher'] || source['Location']
      pub << %{<span class='publication'>#{pubs[0].strip if source['Publisher']}#{pubs[1].strip if source['Location']}. </span>}
    end

    return pub
  end

# -----
# Pages
# -----
  def RefPages(source)
    pp = ""
    if source['Pages']
      pp << %{<span class="pages">pp. #{source['Pages']}. </span>}
    end
    return pp
  end

# ----
# Link
# ----
  def RefLink(source)
    if source['Url'].is_a?(String)
      url = %{<a href="#{source['Url']}">#{source['Url']}</a>}
    elsif source['Url']
      url = ""
      source['Url'].each{ |link|
        url << %{<a href="#{link}">#{link}</a><br />}
      }
    end

    return %{<ul class='url'>#{url if url}</ul>}
  end

end
