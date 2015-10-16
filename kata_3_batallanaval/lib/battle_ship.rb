class BattleShip
  attr_reader :board

  def initialize(x,y)
    @board = Board.new(x,y)
  end

  def board_width?
  	@board.width?
  end
end