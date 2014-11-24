require 'line_item'

  describe LineItem do

  let(:lineitem) {LineItem.new}
  let(:dish) {double :dish}


  it "should know which items are on it's line" do
    expect(dish.line_total).to eq (0)
  end

end
