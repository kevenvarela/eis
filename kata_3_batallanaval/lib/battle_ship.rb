class BattleShip
  attr_reader :board

  def initialize(matrix)
  	@board = Board.new(matrix)
  end

  def board_size?
  	@board.matrix_size?
  end
end