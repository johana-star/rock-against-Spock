Feature: Computer responds to provided throw 
	The computer counters with a winning throw when provided a throw in a game of rock-paper-scissors-lizard-Spock.

	Scenario Outline: provide a winning counter
		Given the throw is "<throw>"
		When The computer provides "<counter>"

		
		Scenarios: rochambeau wins
			| counter		| verb			| throw		| outcome	|
			| scissors		| cut			| paper		| win		|
			| paper			| covers		| rock		| win		|
			| lizard		| poisons		| Spock		| win		|
			| Spock			| smashes		| scissors	| win		|
			| scissors		| decapitate 	| lizard	| win		|