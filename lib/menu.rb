class Menu

  def initialize
    @dishes = []
  end

  def dish_count
    @dishes.count
  end

  def add_dish!(dish)
    @dishes << dish
  end

  def display_dishes
    @dishes
  end
end
