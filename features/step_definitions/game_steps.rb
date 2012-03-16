class Output
  def messages
    @messages ||= []
  end
  
  def puts(message)
    messages << message
  end
  
end

def output
  @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = Rochambeau::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given /^the counter is "([^"]*)"$/ do |counter|
  @counter = counter
end

When /^I submit "([^"]*)"$/ do |throw|
  @throw = throw
end

Then /^the response should be "([^"]*)"$/ do |verb|
  @verb = verb
end

Then /^the player should "([^"]*)"$/ do |outcome|
  @outcome = outcome
end