class Boat 
  attr_reader :type, :orientation, :position

  def initialize(type, orientation, position)
  	@type = type
  	@orientation = orientation
  	@position = position
  end

  def equal?(boat)
  	@type == boat.type &&
  	@orientation == boat.orientation &&
  	@position == boat.position 
  end
end