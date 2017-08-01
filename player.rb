module MathGame

  class Player

    DEFAULT_NAMES = ['Player 1', 'Player 2']
    @@total_players = 0

    attr_accessor :name, :lives

    def initialize(name, lives)
      @@total_players += 1
      @lives = lives
      puts '----- TYPE IN YOUR NAME(OPTIONAL) -----'
      test = gets.strip
      if test.empty? && @@total_players == 1
        test = DEFAULT_NAMES[0]
      elsif test.empty? && @@total_players == 2
        test = DEFAULT_NAMES[1]
      end
      @name = test
    end

  end

end
