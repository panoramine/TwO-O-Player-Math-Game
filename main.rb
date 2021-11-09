require "./player"
require "./question"

def new_turn
  puts "----- NEW TURN -----"
end

def scoreboard
  puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
end

def game_over
  puts "----- GAME OVER -----"
  puts "Good bye!"
end


@conter = 0
@player1 = Player.new("Player 1")
@player2 = Player.new("Player 2")

while @player1.playing? && @player2.playing
  @question = Question.new

  if @counter % 2 != 0
    @counter += 1
    puts "Player 1: #{@question.problem}"
    answer = gets.chomp
    if answer.to_i == @question.result
      puts "YES! You are correct."
      scoreboard
      new_turn
    else
      puts "Seriously? No!"
      player1.lose_life
      scoreboard
      if !@player1.playing?
        puts "Player 2 wins with a score of #{@player2.lives}/3"
        game_over
      else
        new_turn
      end
    end
  else
    @counter += 1
    puts "Player 2: #{@question.problem}"
    answer = gets.chomp
    if answer.to_i == @question.result
      puts "YES! You are correct."
      scoreboard
      new_turn
    else
      puts "Seriously? No!"
      player2.lose_life
      scoreboard
      if !@player2.playing?
        puts "Player 1 wins with a score of #{@player1.lives}/3"
        game_over
      else
        new_turn
      end
    end
  end
end




