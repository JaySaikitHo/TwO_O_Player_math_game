

class Questions
  

  def random_question ()
    x = rand(1..20)
    y = rand(1..20)
    @correct_answer = x + y
    @question = "What is #{x} + #{y}?"
        
  end
  
  def ask_question ()
    puts random_question
    
  end
  
  def check_answer()
    answer = $stdin.gets.chomp
    
    if answer.to_i == @correct_answer
       puts "You got it right"
       win = answer.to_i == @correct_answer 
       
    end
    
        
    
    
  end

end


