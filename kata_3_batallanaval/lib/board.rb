class Board
  attr_reader :x, :y

  def initialize(x,y)
  	@positions = {}
  	@x = x
  	@y = y
  end

  def place(boat)
  	boat_positions = boat.positions

    verify(boat_positions)
    save(boat_positions, boat)
    true # seems like forcing the method to return true
  end

  def verify(boat_positions) 
    raise OutOfBoardException.new('Out of board!')       if out_of_board? boat_positions
    raise BussyPlaceException.new('The place is bussy!') if place_busy? boat_positions
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

  def ship_in?(boat_position)
    return @positions.values_at(boat_position)[0] if @positions.has_key? boat_position
    false
  end

  def shoot_to(position)
    return shoot_and_check(position) if @positions.has_key?(position)  
    'water'
  end

  def shoot_and_check(position)
    @positions[position].hit
    check_sink(@positions[position])
    true
  end

  def check_sink(boat)
    delete_boat(boat) if boat.hits == 0
  end

  def delete_boat(boat)
    boat.positions.each{ |key| @positions.delete(key)}
  end

end
