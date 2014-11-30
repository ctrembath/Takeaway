require 'twilio-ruby'
class Takeaway

attr_accessor :customer, :customer_number, :total_order

  def initialize (customer, customer_number)
    @customer = customer
    @customer_number = customer_number
  end

  def customer_order(order)
    @total_order = order
  end



  def send_sms(confirmation, customer_number)

  account_sid = 'PN7d4109e2c248f16af4fae81adb45cb29'
  auth_token = '5fad9a4e426d2c9c9ac3b6a8323ee01d'
  @client = Twilio::REST::Client.new account_sid, auth_token
  @client.messages.create({
    from: '+7964757454',
    body: "We have your order!",
    to: customer_number
    })
  end

end