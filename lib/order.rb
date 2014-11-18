class Order


  attr_accessor :dish, :quantity

  def initialize(dish, quantity)
    @dish = dish
    @quantity = quantity
  end

  def total_order
    @dish
  end
end