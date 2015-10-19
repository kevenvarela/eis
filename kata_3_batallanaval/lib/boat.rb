class Boat 
  attr_reader :type, :orientation, :position, :types, :hits
  @@types = {"Destroyer": 3, "Cruise": 2, "Submarine": 1}

  def initialize(type, orientation, position)
    @type = type
    @orientation = orientation
    @position = position
    @hits = types[type.to_sym]
  end
  
  def types
    @@types
  end

  def positions
    return [position]            if type == "Submarine"
    return horizontally_position if orientation == "horizontally"
    vertically_position
  end

  def position_by(coord)
    res = []
    for n in position[coord]..end_coord(coord) 
      res <<  yield(n) 
    end
    return res
  end  

  def horizontally_position
    position_by(0) { |n| [n, position[1]] }
  end

  def vertically_position
    position_by(1) { |n| [position[0], n] }
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

