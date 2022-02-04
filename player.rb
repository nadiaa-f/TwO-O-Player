class Player
  attr_accessor :name, :score, :hearts_left 

  def initialize(name) 
   @name = name
   @score = 0
   @hearts_left  = 3
  end

  def increase_score
    @score += 1
  end

  def decrease_scrore
    @hearts_left -= 1
  end 


end