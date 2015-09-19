class DosCifras < TipoDeNumero

  def to_s(numero)
    @hash[descena(numero)]+','+@hash[unidad(numero)] if numero != nil && numero.between?(1,99)
  end

  def unidad(n)
    n % 10
  end
  
  def descena(n)
    n / 10
  end
  
end