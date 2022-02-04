class Question
  attr_accessor :val1, :val2, :answer

  def initialize()
    @val1 = rand(21)
    @val2 = rand(21)
    @answer = @val1 + @val2
  end

  def ask_question (player)
    puts "#{player.name}: What is #{@val1} plus #{@val2} equal?"
    answer = gets.chomp.to_i
    if(answer == @answer)
      player.increase_score
      puts "#{player.name}: Congrats! You are right!"
    else 
      player.decrease_scrore
      puts "#{player.name}: AHAHA? No!"
    end
  end

end