module MathGame

  class Player

    DEFAULT_NAMES = ['Player 1', 'Player 2']
    @@total_players = 0

    attr_accessor :name, :lives

    def initialize(name, lives)
      @@total_players += 1
      @lives = lives
      puts '----- TYPE IN YOUR NAME(OPTIONAL) -----'
      input = gets.strip
      if input.empty? && @@total_players == 1
        input = DEFAULT_NAMES[0]
      elsif input.empty? && @@total_players == 2
        input = DEFAULT_NAMES[1]
      end
      @name = input
    end

  end

end
