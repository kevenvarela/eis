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
    #verify(positions)
    save(boat_positions, boat)
    true # seems like forcing the method to return true
  end
=begin
  def verify(positions)
  	raise BusyPlaceException.new("Bussy position!") if place_busy(positions)
  end

  def place_busy(positions)
  	@positions.each_key{ |key| positions.include? key }
  end
=end
  def save(boat_positions, boat)
  	boat_positions.each{ |key| @positions[key] = boat }
    puts @positions
  end

end
