class Board
  attr_reader :x, :y

  def initialize(x,y)
  	@x = x
  	@y = y
  end

  def width?
    x
  end
end