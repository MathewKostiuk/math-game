module MathGame

  class Master

    def initialize()
      @game = 'on'
      @player_1 = MathGame::Player.new('Player 1', 3)
      @player_2 = MathGame::Player.new('Player 2', 3)
      @question = MathGame::Question.new
      puts 'Welcome to Math-a-palooza! Where Math === FUN!'
      while @game == 'on'
        if @player_1.lives > 0 && @player_2.lives > 0
          new_turn
        elsif @player_1.lives == 0 && @player_2.lives == 0
          puts 'GAME OVER --- TIE GAME'
          @game = 'game-over'
        else
        end
      end
    end

    def handle_answer(player, input)
      if @question.check_answer(input) == true
        puts "Bingo Pyjama!!"
      else
        player.lives -= 1
        puts "Yo' noggin still workin', Bingo?"
      end
      puts "Current Score: #{@player_1.lives}/3 VS. #{@player_2.lives}/3"

    end

    def new_turn
      puts "----- NEXT ROUND BEGINNING -----"
      @question.new_question(@player_1.name)
      handle_answer(@player_1.name, gets.chomp)
      @question.new_question(@player_2.name)
      handle_answer(@player_2.name, gets.chomp)
    end

  end

end