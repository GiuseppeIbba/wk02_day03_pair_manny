require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")

class TestPub < MiniTest::Test

  def setup
    @drink3 = Drink.new("Wine", 30)
    @drink2 = Drink.new("Whisky", 20)
    @drink1 = Drink.new("Vodka", 10)
    till = 1000
    @pub = Pub.new("The iron curtain", till, [@drink1, @drink2, @drink3])
  end

def test_name()
  assert_equal("The iron curtain", @pub.name())
end

def test_drink_name()
  assert_equal("Wine", @drink3.name)
end

def test_drink_price()
  assert_equal(30, @drink3.price)
end


end
