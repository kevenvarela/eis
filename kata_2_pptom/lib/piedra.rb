class Piedra < Element

  def initialize
  	@hash = {"Mono" => nil, "Piedra" => nil, "Papel" => false, "Tijera" => true}
    @name = "Piedra"
  end
end