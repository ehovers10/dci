module Eref1
  module RefStructure

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

  end
end
