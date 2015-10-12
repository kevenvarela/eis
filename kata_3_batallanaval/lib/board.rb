class Board
  attr_reader :matrix	
  def initialize(matrix)
  	@matrix = matrix
  end

  def matrix_size?
  	@matrix[0]*@matrix[1]
  end
end