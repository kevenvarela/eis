class DemasiadoGrande < TipoDeNumero

  def to_s(numero)
    "demasiado grande" if numero != nil && numero > 99
  end

end
