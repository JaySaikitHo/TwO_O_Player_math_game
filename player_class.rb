class Player
  attr_accessor :name, :life
  
  def initialize(name)
    @name = name
    @life = 3
  end
  
  def get_life
    @life
  end

  def life_loss()
    @life -= 1
    puts "You got it wrong!"
  end
 
end

