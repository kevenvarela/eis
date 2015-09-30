class Game
  #[nil => 'Empate', true => 'Gana', false => 'Pierde']

  def winner?(p1, p2)
    return p1 if p1.element.vs p2.element
    p2
  end	
end