class Chopper

  def initialize
    @hash = { 0 => "cero" , 1 => "uno" , 2 => "dos", 3 => "tres", 4 => "cuatro", 
      5 => "cinco", 6 => "seis", 7 => "siete", 8 => "ocho", 9 => "nueve"}
  end

  def chop(n, array)
    return -1 if ! array.include?(n)
    array.index(n)
  end

  def sum(array)
    n = array.inject :+
    return 'vacio' if n == nil
    return 'demasiado grande' if n > 99
    armar(n)
  end

  def armar(n)
    return @hash[unidad(n)] if(descena(n) == 0)
    @hash[descena(n)]+','+@hash[unidad(n)]
  end

  def unidad(n)
    n % 10
  end
  
  def descena(n)
    n / 10
  end

end
