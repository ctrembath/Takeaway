require 'order'
require 'menu'
require 'dish'

  describe Order do

let(:order)   {Order.new}
let(:menu)    {double :menu}
let(:kebab)    {double :dish, :name => "kebab", :price => 2.50}
let(:pizza)   {double :dish, :name => "pizza", :price => 3}



  it "should have a default number of 0 dishes" do
    expect(order.total_order).to eq(0)
  end

  it "should able to add a dish to order" do
    expect(order.total_order).to eq(0)
    order.add_dish!(pizza)
    expect(order.dishes).to eq([pizza])
    expect(order.total_order).to eq(1)
  end

  it "should know the total price of the order" do 
    expect(order.total_order).to eq(0)
    order.add_dish!(pizza)
    order.add_dish!(kebab)
    expect(order.total_price).to eq(5.50)

  end

  it "knows the contents of the order" do
    order.add_dish!(pizza)
    order.add_dish!(kebab)
    expect(order.dishes).to eq([pizza, kebab])
  end
end