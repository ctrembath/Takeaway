class Order


  attr_accessor :dishes, :order_total

  def initialize
    @dishes = []
  end

  def total_order
  @dishes.count
  end

  def add_dish!(dish)
    @dishes << dish
  end

  def total_price
    @dishes.map { |dish| dish.price }.inject {|sum, n| sum + n}
  end

end