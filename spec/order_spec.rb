require 'order'
require 'menu'
require 'dish'

  describe Order do

    let(:order) {Order.new}
    let(:menu) { double :menu}
    let(:line_item) {double :line_item}


  it "should be able to hold line items" do
    expect(order.total_order).to eq([])
  end

end