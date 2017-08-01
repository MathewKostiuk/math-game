module MathGame

  class Player

    attr_accessor :name
    attr_accessor :lives

    def initialize(name, lives)
      @name = name
      @lives = lives
    end

  end

end
