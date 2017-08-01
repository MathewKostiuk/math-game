module MathGame

  class Master

    def initialize()
      @game = 'on'
      @player_1 = MathGame::Player.new('Player 1', 3)
      @player_2 = MathGame::Player.new('Player 2', 3)
      @players = [@player_1, @player_2]
      @question = MathGame::Question.new
      puts 'Welcome to Math-a-palooza! Where Math === FUN!'
      while @game == 'on'
        if @player_1.lives > 0 && @player_2.lives > 0
          new_turn
        elsif @player_1.lives == 0 && @player_2.lives == 0
          puts 'GAME OVER --- TIE GAME'
          @game = 'game-over'
        else
          winner = @players.max_by(&:lives)
          puts "Congratulations, #{winner.name}. U R t3h ub3r m47h l0rdz"
          @game = 'game-over'
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
      puts "Current Score:#{@player_1.name}: #{@player_1.lives}/3 lives left VS. #{@player_2.name}: #{@player_2.lives}/3 lives left"

    end

    def new_turn
      puts "----- NEXT ROUND BEGINNING -----"
      @question.new_question(@player_1.name)
      handle_answer(@player_1, gets.chomp)
      @question.new_question(@player_2.name)
      handle_answer(@player_2, gets.chomp)
    end

  end

end