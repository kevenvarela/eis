class Vacio < TipoDeNumero

  def to_s(numero)
    "vacio" if numero == nil
  end

end
