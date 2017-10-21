require "./spec_helper"

class Person
  property name
  def initialize(@name : String); end
end

class PersonDelegator < Delegator(Person)
  def greet
    "Hello #{name}"
  end
end

describe Delegator do
  it "delegates messages" do
    gal = Person.new("Gal")
    greet = PersonDelegator.delegate(gal).greet
    greet.should eq "Hello Gal"
  end
end
