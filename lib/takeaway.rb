require 'twilio-ruby'
class Takeaway

  attr_writer :customer

  ACCOUNT_SID = 'PN7d4109e2c248f16af4fae81adb45cb29'
  AUTH_TOKEN = '5fad9a4e426d2c9c9ac3b6a8323ee01d'

  def initialize (customer)
    @customer = customer
    @client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
  end

  def customer_order(order)
    @total_order = order
  end

  def send_sms(confirmation, customer_number)
    @client.messages.create({
      from: '+7964757454',
      body: "We have your order!",
      to: @customer.telephone_number
    })
  end

end