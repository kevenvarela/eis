class Piedra < Element
  @hash = ["Mono" => nil, "Piedra" => nil, "Papel" => true, "Tijera" => false]
  
  def initialize
    @name = "Piedra"
  end
end