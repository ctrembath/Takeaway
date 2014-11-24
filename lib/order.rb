class Order


  attr_reader :dishes, :total_order

  def initialize
    @dishes = []
  end

  def add_dish!(dish)
    @dishes << dish
  end

  def total_order
    @dishes.count
  end

  def total_price
    @dishes.map { |dish| dish.price }.inject {|sum, n| sum + n}
  end


end