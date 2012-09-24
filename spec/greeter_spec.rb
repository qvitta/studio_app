require File.dirname(__FILE__) + '/../lib/rspec/greeter'

describe "RSpec Gretter" do
  it "Should say Hello World when it receives the greet() message" do
    greeter = RSpecGreeter.new
    greeting = greeter.greet
    greeting.should == "Hello World!!!"
  end
end

