
require './player'
require './questions'

class Game

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def start
    puts "Game Begins"
    puts "#{@player1.name} vs. #{@player2.name}"
    active_player = @player1


    while !end_game
      question = Question.new
      question.ask_question(active_player)
      hearts_left_board

      new_turn 

      if(active_player == @player1)
        active_player = @player2
      else
        active_player = @player1
      end

    end

    puts "#{winner.name} wins with #{winner.hearts_left}/3"
    game_over
  end

  def new_turn
    puts "New turn"
  end

  def game_over
    puts "Dun. Dun. Game Over"
    puts "See ya later!"
  end

  def end_game
    @player1.hearts_left  == 0 || @player2.hearts_left  == 0
  end

  def hearts_left_board
    puts "#{@player1.name} #{@player1.hearts_left }/3 vs #{@player2.name} #{@player2.hearts_left }/3"
  end

  def winner 
    return @player1 if @player1.hearts_left  > 0 
    return @player2 if @player2.hearts_left  > 0 
  end

end 