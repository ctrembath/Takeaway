require 'order'

  describe Order do

    let(:order) {Order.new}
    let(:menu) { double :menu}
    let(:line_item) {double :line_item}


  it "should have a list of items that have been ordered" do
    expect(order.dish_selection).to e
  end
end