class Piedra < Element

  def initialize
  	@hash = {"Mono" => nil, "Piedra" => nil, "Papel" => true, "Tijera" => false}
    @name = "Piedra"
  end
end