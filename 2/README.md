This is an attempt at solving the [rock-paper-scissors-lizard-Spock kata](http://ipsc.ksp.sk/contests/ipsc2011/real/problems/a.php).

The easy subproblem is to win every round of a game of rochambeau. By winning we mean write a function which returns a winning sign when provided a sign. 

	I begin by writing features/computer_responds_to_throw.feature.
	
	Then I run cucumber which provides initial step definitions.
	
	I create features/step_definitions/rochambeau.rb and fill it with the provided step definitions.
	
	I fill in the first step definition defining ```@throw = throw```.
	
	The next step is trickier:
	```
	When /^The computer provides "([^"]*)"$/ do |counter|
	  @counter = winning_throw(counter)
	  counter.should = @counter 
	end
	```
	and define a method with:
	```
	def winning_throw(throw)
	  counter = case throw
	            when "rock" then "paper"
	            when "paper" then "scissors"
	            when "scissors" then "Spock"
	            when "lizard" then "scissors"
	            when "Spock" then "lizard"
	end
	```
	
	I receive a **undefined method `should=' for "paper":String (NoMethodError)** and investigate shoulds in Cucumber using _The RSpec Book_. I realize that '=' might need to be 'equal()'. Tried that and got **"Compared using equal?, which compares object identity,
	      but expected and actual are not the same object. Use
	      'actual.should == expected' if you don't care about
	      object identity in this example."**
	
	Altered chart which was:
	Scenarios: rock-paper-scissors wins
      | throw		| verb		| counter	| outcome	|
      | paper		| cut		| scissors	| win		|
      | rock		| covers	| paper		| win		|
      | scissors	| smashes	| rock		| win		|
	
	to:
	Scenarios: rochambeau wins
		| counter		| verb			| throw		| outcome	|
		| scissors		| cut			| paper		| win		|
		| paper			| covers		| rock		| win		|
		| rock			| crushes		| lizard	| win		|
		| lizard		| poisons		| Spock		| win		|
		| Spock			| smashes		| scissors	| win		|
		| scissors		| decapitate 	| lizard	| win		|
		| lizard		| eats			| paper		| win		|
		| paper			| disproves		| Spock		| win		|
		| Spock			| vaporizes		| rock		| win		|
		| rock			| breaks		| scissors	| win		|

	For readability and completeness.
	
	But! I realize that this is partially correct, half of these cases pass, but all I need to do is provide a winning sign, not the variant. I decide to prune the RED cases which are
	
	
	| rock			| crushes		| lizard	| win		|
	| lizard		| eats			| paper		| win		|
	| paper			| disproves		| Spock		| win		|
	| Spock			| vaporizes		| rock		| win		|
	| rock			| breaks		| scissors	| win		|
	
	I have green and a working function, along with two undefined steps
	
			Then the response should be "<verb>"
			And the computer should "<outcome>"
			
	Which I cut. I have twelve minutes left. I decline to build a file loader to prove this can win a thousand rounds of the easy input data.
	
	Next steps: seperate the method into a Game or Rochambeau class, and begin to build the commandline or dataloading version of this game.
