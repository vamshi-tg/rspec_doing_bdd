# Load configuration for the specification
require "spec_helper"
require_relative "./zombie"

describe Zombie do
    # Examples(Tests) go here
    # Examples are written using 'it' method

    it "should be named Ash" do
        zombie = Zombie.new
        zombie.name.should == "Ash"
    end

    it "has no brains" do
        zombie = Zombie.new
        zombie.brains.should < 1
    end

    it 'is hungry' do
        zombie = Zombie.new
        zombie.should be_hungry
    end
end