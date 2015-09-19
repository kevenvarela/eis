class ArmadorDeNumeros

  def initialize(chopper)
    @chopper = chopper
    @tipos_de_numeros = [Vacio.new(self), UnaCifra.new(self), 
    	DosCifras.new(self), DemasiadoGrande.new(self)]
  end

  def armar(numero)
    @tipos_de_numeros.map{|x| x.to_s(numero) }.compact[0]
  end

end
