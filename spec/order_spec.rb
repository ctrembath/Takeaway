require 'order'
require 'menu'
require 'dish'

  describe Order do

    let(:order) {Order.new}
    let(:menu) { double :menu}
    let(:dish) {double :dish}


  it "should have a default number of 0 dishes" do
    expect(order.total_order).to eq(0)
  end

  it "should able to add a dish to order" do
    expect(order.total_order).to eq(0)
    order.add_dish!("pizza")
    expect(order.dishes).to eq(["pizza"])
  end

end