module Rochambeau
  class Game
    def initialize(output)
      @output = output
    end
    
    def start
      @output.puts 'Welcome to rock-paper-scissors-lizard-Spock!'
      @output.puts 'Throw one of the following: rock, paper, scissors, lizard, or Spock.'
    end
  end
end