module Jekyll

  def slug(str)
    str.strip.downcase.gsub /\W+/, '-'
  end

end
