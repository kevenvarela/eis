class Game

  def initialize
  	@scores = {'p1' => 0, 'p2' => 0}
  end

  def winner?(p1, p2)
    if p1.element.vs p2.element
      @scores['p1'] += 1
      return p1 
    end
    if p2.element.vs p1.element
      @scores['p2'] += 1
      return p2
    end
    nil
  end	

  def winner_of_set?(p1, p2)
  	hash = {'p1' => p1, 'p2' => p2, nil => nil}
    hash[@scores.key 2] 
  end

  def start_set(p1, p2)
  	@scores = {'p1' => 0, 'p2' => 0}
  end
end