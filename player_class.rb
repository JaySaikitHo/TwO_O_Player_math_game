class Player
  attr_accessor :name, :life
  
  def initialize(name)
    @name = name
    @life = 3
  end
  
  def life_loss()
    @life -= 1
  end
 
end

jay = Player.new("Jay")
jay.life_loss
puts jay.life