module Jekyll

  def Slug(str)
    str.strip.downcase.gsub /\W+/, '-'
  end

end
