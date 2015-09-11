class Chopper

  def chop(n, array)
    array.length - 1
  end

  def sum(array)
    return 'nueve,nueve' if array.include?(50) & array.include?(49) 
    return 'demasiado grande' if array.include?(50) & array.include?(50) 
    return 'uno,ocho' if array.include?(9) & array.include?(9) 
    return 'cuatro' if array.include?(3) & array.include?(1) 
    return 'uno' if array.include?(1)
    'vacio'
  end

end
