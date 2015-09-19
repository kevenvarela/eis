class Chopper

  def initialize
    @armador_de_numeros = ArmadorDeNumeros.new(self)
  end

  def chop(n, array)
    return -1 if ! array.include?(n)
    array.index(n)
  end

  def sum(array)
    n = array.inject :+
    @armador_de_numeros.armar(n)
  end

end
