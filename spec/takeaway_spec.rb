require 'takeaway'
require 'text_message'
require 'order'


describe Takeaway do

  let (:takeaway) {Takeaway.new("clare", "+7964757454")}
  let (:dish) {double :dish}
  let (:order) {double :order}
  # let (:customer) {double :customer "clare"}
  # let (:customer_number) {double :customer_number, 

  it "should have a customer" do
    expect(takeaway.customer).to eq("clare")
  end

  it "should know the customers number" do
    expect(takeaway.customer_number).to eq("+7964757454")
  end

  it "should know the customers order" do
    expect(takeaway.customer_order(order)).to eq(order)
  end
end
