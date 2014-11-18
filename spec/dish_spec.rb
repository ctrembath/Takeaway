require 'dish'

  describe Dish do

    let(:dish) { Dish.new }

    it "should have a changeable name" do
      pizza = Dish.new("pizza",3.00)
      expect(pizza.name).to eq("pizza")
    end

    it "should have a price" do
      pizza = Dish.new("pizza",3.00)
      expect(pizza.price).to eq(3.00)

    end
  end
