class Element
  attr_reader :name

  def vs(element)
  	@hash[element.name]
  end
end