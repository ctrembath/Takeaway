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

  it "should be able to send out a receipt" do
    allow(takeaway).to recieve(send_sms)
    expect(Twilio::REST::Client.new).to receive_message_chain(:messages, :create)
  end

end
