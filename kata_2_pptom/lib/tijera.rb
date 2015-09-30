class Tijera < Element
  @hash = ["Mono" => true, "Piedra" => false, "Papel" => true, "Tijera" => nil]
  
  def initialize
    @name = "Tijera"
  end
end