class Board
  attr_reader :x, :y

  def initialize(x,y)
  	@x = x
  	@y = y
  end

  def width?
    x
  end

  def high?
    y
  end
end

=begin
	
	positions:{ 
			{1,1: BarcoA}
			{1,2: BarcoB}
			{1,3: BarcoB}
	}	
 or
	float:{ 
			{ destroyer: [[1,1],[1,2],[1,3]] },
			{ submarine: [[2,1]] },
			{ cruice:    [[2,2],[3,2]] }
	}
 or
 	float:{ 
			{ destroyer: [[1,1],[1,2],[1,3]]},
			{ submarine: [[2,1]] },
			{ cruice:    [[2,2],[3,2]] }
	}

=end