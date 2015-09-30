class Game
  #[nil => 'Empate', true => 'Gana', false => 'Pierde']

  def winner?(p1, p2)
    return p1 if p1.element.vs p2.element
    return p2 if p2.element.vs p1.element
    nil
  end	
end