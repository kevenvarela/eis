class Boat 
  attr_reader :type, :orientation, :position, :types, :hits

  def initialize(type, orientation, position)
  	@types = {"Destroyer": 3, "Cruise": 2, "Submarine": 1}
    @type = type
    @orientation = orientation
    @position = position
    @hits = types[type.to_sym]
  end

  def positions
    return [position]            if type == "Submarine"
    return horizontally_position if orientation == "horizontally"
    vertically_position
  end

  def horizontally_position
    res = []
    for x in position[0]..end_coord(0) 
      res << [x, position[1]]
    end
    return res
  end

  def vertically_position
    res = []
    for y in position[1]..end_coord(1)
      res << [position[0], y]
    end
    return res
  end

  def end_coord(place)
    position[place] + types[type.to_sym] -1
  end

  def hit
    @hits -= 1 
    true
  end

  def equal?(boat)
  	@type == boat.type &&
  	@orientation == boat.orientation &&
  	@position == boat.position 
  end
end

