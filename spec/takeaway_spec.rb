require 'takeaway'
require 'text_message'
require 'order'


describe Takeaway do

  let (:takeaway) {Takeaway.new}
  let (:dish) {double :dish}
  let (:order) {double :order}

  it "should accept an order" do
    takeaway.accept_order(order)
    expect(takeaway.order).to eq(order)
  end

  # it "should not process an order unless a customer requested it" do
  #   expect(takeaway.order).to 
  # end

  # it "should be able to send out a receipt" do
  #   expect(customer).
  # end

end
