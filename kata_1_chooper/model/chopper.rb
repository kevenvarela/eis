class Chopper

  def initialize
    @hash = { nil => "vacio", 0 => "cero" , 1 => "uno" , 2 => "dos", 3 => "tres", 
      4 => "cuatro", 5 => "cinco", 6 => "seis", 7 => "siete", 8 => "ocho", 9 => "nueve", 
      10 => "demasiado grande"}
  end

  def chop(n, array)
    return -1 if ! array.include?(n)
    array.index(n)
  end

  def sum(array)
    n = array.inject :+
    armar(n)
  end

  def unidad(n)
    n % 10
  end
  
  def descena(n)
    n / 10
  end

  def armar(n)
    return @hash[n]                               if n == nil
    return @hash[descena(n)]                      if n > 99
    return @hash[unidad(n)]                       if n < 10
    return @hash[descena(n)]+','+@hash[unidad(n)] if n > 9
  end

end
