class Board
  attr_reader :x, :y

  def initialize(x,y)
  	@positions = {}
  	@x = x
  	@y = y
  end

  def width?
    x
  end

  def high?
    y
  end

  def place(boat)
  	boat_positions = boat.positions
    verify(boat_positions)
    save(boat_positions, boat)
    true # seems like forcing the method to return true
  end

  def verify(boat_positions) 
    raise BussyPlaceException.new('The place is busy!')  if place_busy? boat_positions
    raise OutOfBoardException.new('Out of board!')  if out_of_board? boat_positions
  end

  def place_busy?(boat_positions)
  	boat_positions.any?{ |key| @positions.has_key?(key) }
  end

  def out_of_board?(boat_positions)
    boat_positions.any?{ |coord| step_out_of_board?(coord) }
  end

  def step_out_of_board?(coord)
    coord[0] > x || coord[1] > y
  end

  def save(boat_positions, boat)
  	boat_positions.each{ |key| @positions[key] = boat }
  end

  def ship_in?(position)
    return @positions.values_at(position)[0] if @positions.has_key? position
    false
  end

end
