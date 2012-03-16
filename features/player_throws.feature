Feature: Player submits a throw
	The player submits a throw and the computer provides a counter.

	Scenario Outline: submit a throw
		Given the counter is "<counter>"
		When I submit "<throw>"
		Then the response should be "<verb>"
		And the player should "<outcome>"
		
		Scenarios: rock-paper-scissors wins
	      | throw		| verb		| counter	| outcome	|
	      | rock		| breaks	| scissors	| win		|
	      | scissors	| cuts		| paper		| win		|
	      | paper		| covers	| rock		| win		|