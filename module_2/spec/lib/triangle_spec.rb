require "spec_helper"
require_relative "./triangle"

describe Triangle do
    it "should create a triangle" do
        triangle = Triangle.new(10, 20, 30)
        triangle.a.should == 10
        triangle.b.should == 20
        triangle.c.should == 30
    end

    it "should return the type of triangle" do
        triangle = Triangle.new(10, 20, 30)
        triangle.type.should_not be_nil
    end

    it "should return invalid" do
        triangle = Triangle.new(10, 20, nil)
        triangle.c.should be_nil
        triangle.type.should == :invalid
    end

    it "should return equilateral" do
        triangle = Triangle.new(10, 10, 10)
        triangle.type.should == :equilateral
    end

    it "should return isosceles" do
        triangle = Triangle.new(10, 20, 10)
        triangle.type.should == :isosceles
    end

    it "should return scalene" do
        triangle = Triangle.new(10, 20, 30)
        triangle.type.should == :scalene
    end
end