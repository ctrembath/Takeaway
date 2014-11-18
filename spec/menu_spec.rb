require 'menu'

  describe Menu do
    let(:menu) {Menu.new}
    let(:dish) {double :dish}

  it "should have an array of dishes" do
    expect(menu.dishes).to eq([])
  end

  it "should be able to add new dishes" do
    expect(menu.dish_count).to eq(0)
    menu.add_dish!(dish)
    expect(menu.dish_count).to eq(1)
  end

  it "should know how many dishes it has" do
    10.times {menu.add_dish!(dish)}
    expect(menu.dish_count).to eq (10)
  end





  end