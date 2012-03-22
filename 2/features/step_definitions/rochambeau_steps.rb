def winning_throw(throw)
  counter = case throw
            when "rock" then "paper"
            when "paper" then "scissors"
            when "scissors" then "Spock"
            when "lizard" then "scissors"
            when "Spock" then "lizard"
            else "Please throw a real sign."
            end
end

Given /^the throw is "([^"]*)"$/ do |throw|
  @throw = throw
end

When /^The computer provides "([^"]*)"$/ do |counter|
  @counter = winning_throw(@throw)
  @counter.should == counter
end

Then /^the response should be "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^the computer should "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end