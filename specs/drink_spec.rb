require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup

    @drink = Drink.new("Vodka", 10)
  end


def test_drink_name()
  assert_equal("Vodka", @drink.name())
end

def test_price
  assert_equal(10, @drink.price)
end

end
