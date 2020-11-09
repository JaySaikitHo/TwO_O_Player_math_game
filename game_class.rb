###GAME CLASS
require "./player_class.rb"
require "./questions_class.rb"

class Game
def initiliaze (p1, p2)
  @p1 = Player.new
  @p2 = Player.new
  @turn = 1
end

def print_life
  puts "P1:#{p1.life} vs P2:#{p2.life}"
end

def start_game 
  while @p1.life == 0 || @p2.life == 0 do 
  
  print_life  
  question = Questions.new
  question.ask_question
  
  
  if !question.check_answer
    
    if @turn == 1 p1.life_loss 
     
      else @turn == 2 p2.life_loss
    
    end
  
  end

    if @turn == 1 
      @turn = 2
    else
      @turn = 1
    
    end
  
    print_life
 end

end


gamestart = new.Game("Jay","Mako")