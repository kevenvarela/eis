class Board
  attr_reader :matrix	

  def initialize matrix
  	@matrix = Array.new(matrix[0]) { Array.new(matrix[1], false) }
  end

  def size?
  	@matrix.flatten.size
  end

  def set_ship(ship_size, orientation, coord)
    x = coord[0]
    y = coord[1]

    if orientation == "vertically"
      for i in 1..ship_size
        @matrix[x][y] = true  
        y=y+1
      end
      return true
    end
    
    for i in 1..ship_size
      @matrix[x][y] = true  
      x=x+1
    end
    return true
    
  end

  def ship_in? coord
    @matrix[coord[0]][coord[1]]    
  end

end

