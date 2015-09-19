class UnaCifra < TipoDeNumero

  def to_s(numero)
  	@hash[numero] if numero != nil && numero < 10
  end

end
