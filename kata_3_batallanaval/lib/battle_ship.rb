class BattleShip
  attr_reader :board

  def initialize(x,y)
    @board = Board.new(x,y)
  end

  def board_width?
  	@board.width?
  end

  def board_high?
  	@board.high?
  end

  def new_boat(type, orientation, position)
  	Boat.new(type, orientation, position)
  end

  def place(type, orientation, position)
  	true
  end
end