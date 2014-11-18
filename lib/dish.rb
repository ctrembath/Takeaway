class Dish

  attr_accessor :name, :price

  def initialize(name = 'foods', price = 'monny')
    @name = name
    @price = price
  end
end