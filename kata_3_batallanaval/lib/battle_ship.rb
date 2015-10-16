class BattleShip
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def board_width?
  	@board.width?
  end
end