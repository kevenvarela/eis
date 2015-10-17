class Boat 
  attr_reader :type, :orientation, :position, :types

  def initialize(type, orientation, position)
  	@type = type
  	@orientation = orientation
  	@position = position
  	@types = {"Destroyer": 3, "Cruise": 2, "Submarine": 1}
  end
=begin
  def positions?
    return position if type == "Submarine"
  	
    res = [position]
  	
    if orientation == "horizontally"
      end_x = position[0] + types[type.to_sym]

  	  puts "------------------"
  	  puts position[0]
  	  puts "------------------"
  	  puts types[type.to_sym]
  	  puts "------------------"
  	  puts end_x
  	  puts "------------------"

  	  position[0].upto end_x.to_i {|x| res+[position[x],position[1]]}
  	else
  	  end_y = position[1]+ types[type.to_sym]
  	  position[1].upto end_y.to_i {|y| res+[position[1],position[y]]}
    end
  end 
=end
  def positions?
    [position] if type == "Submarine"
  end

  def equal?(boat)
  	@type == boat.type &&
  	@orientation == boat.orientation &&
  	@position == boat.position 
  end
end
