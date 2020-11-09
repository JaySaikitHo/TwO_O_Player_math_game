

class Questions

  def random_question ()
    x = rand(1..20)
    y = rand(1..20)
    correct_answer = x + y
    return @question = "What is #{x} + #{y}?"
    
    
  end

  def ask_question ()
    puts random_question
    answer = gets.chomp
    
  end

end

q1 = Questions.new

q1.ask_question
