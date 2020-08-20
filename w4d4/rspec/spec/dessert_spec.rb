require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(@type).to eq(type)
    end


    it "sets a quantity" do
      expect(@quantity).to eq(quantity)
    end

    it "starts ingredients as an empty array" do
       expect(@ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
        expect{@quantity=String.new}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      let add_ingredient("pepper")
      expect(@ingredients[-1]).to eq("pepper")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect{self.mix!}.to eq((self.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect{self.eat(1)}.to eq((@ingredients -= 1)
    end

    it "raises an error if the amount is greater than the quantity" do
      let{eat(10)} { Board.new }

    expect{self.eat(8)}.to eq((@ingredients -= 1)
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
