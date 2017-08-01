module MathGame

  class Question

    def rando_num
      rand(1...20)
    end

    def new_question(player_name)
      @values = [rando_num, rando_num]
      @answer = @values[0] + @values[1]
      puts "#{player_name}: What does #{@values[0]} plus #{@values[1]} equal?"
    end

    def check_answer(input)
      if @answer == input.to_i
        true
      else
        false
      end
    end

  end

end