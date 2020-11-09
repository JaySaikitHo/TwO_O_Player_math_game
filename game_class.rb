###GAME CLASS
require_relative "./player_class"
require_relative "./questions_class"

class Game
  def initialize 
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @turn = 1
  end

  def print_life
    puts "#{@p1.name} score :#{@p1.get_life} vs #{@p2.name} score :#{@p2.get_life}"
  end

  def start_game 
    
    while @p1.get_life > 0 && @p2.get_life > 0 do 
      
      question = Questions.new
      
      if @turn == 1 
          puts "#{@p1.name}: #{question.ask_question}"
        else 
          puts "#{@p2.name}: #{question.ask_question}"
      end
      
      
      if !question.check_answer
        
        if @turn == 1 
          @p1.life_loss 
          
          
        else @turn == 2 
          @p2.life_loss
          
        end
                        
      end
      
      if @turn == 1 
        @turn = 2
      else
        @turn = 1
      end
      
      puts "---- NEW TURN ----"
      print_life
    end
    
    puts "Game Over Final Score"
    print_life
  end
  
    
end
