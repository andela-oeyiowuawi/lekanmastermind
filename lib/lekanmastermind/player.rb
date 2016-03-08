module Lekanmastermind
  class Players
    attr_accessor :name, :guess, :history
    def initialize(name)
      @name = name
      @history = []
    end

    def save_guess(guess, exact_numb, partial_numb)
      result = "#{exact_numb} exacts, #{partial_numb} partials"
      @history << [guess, result]
    end
  end
end
