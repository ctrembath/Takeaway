require 'customer'

describe Customer do

  let(:customer) {Customer.new("Clare", "+7964757454")}

    it "should have a name" do
      expect(customer.name).to eq("Clare")
    end

    it "should have a telephone number" do
      expect(customer.telephone_number).to eq("+7964757454")
    end

end
