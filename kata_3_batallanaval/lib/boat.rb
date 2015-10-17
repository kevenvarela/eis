class Boat 
  attr_reader :type, :orientation, :position, :types

  def initialize(type, orientation, position)
  	@type = type
  	@orientation = orientation
  	@position = position
  	@types = {"Destroyer": 3, "Cruise": 2, "Submarine": 1}
  end

  def positions?
    return [position] if type == "Submarine"
    
    res = []
    
    
    if orientation == "horizontally"
      end_x = position[0] + types[type.to_sym] -1

      for x in  position[0]..end_x
        res<<[x,position[1]]
      end
      return res
    end

    end_y = position[1] + types[type.to_sym] -1
    for y in  position[1]..end_y
        res<<[position[0],y]
    end
    res

  end

  def equal?(boat)
  	@type == boat.type &&
  	@orientation == boat.orientation &&
  	@position == boat.position 
  end
end
