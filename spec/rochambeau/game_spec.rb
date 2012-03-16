require 'spec_helper'

module Rochambeau
  describe Game do
    describe "#start" do
      let(:output)  { double('output').as_null_object }
      let(:game)    { Game.new(output) }
      
      it "sends a welcome message" do  
        output.should_receive(:puts).with("Welcome to rock-paper-scissors-lizard-Spock!")
        game.start
      end
      
      it "prompts for the first throw" do 
        output.should_receive(:puts).with("Throw one of the following: rock, paper, scissors, lizard, or Spock.")
        game.start
      end
    end
  end
end