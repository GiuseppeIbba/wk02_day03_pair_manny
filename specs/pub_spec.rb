require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class TestPub < MiniTest::Test

  def setup
    @drink3 = Drink.new("Wine", 80)
    @drink2 = Drink.new("Whisky", 20)
    @drink1 = Drink.new("Vodka", 10)
    till = 1000
    @pub = Pub.new("The iron curtain", till, [@drink1, @drink2, @drink3])
    @customer = Customer.new("Dave", 100)
  end

def test_name()
  assert_equal("The iron curtain", @pub.name())
end

def test_till_starts_at_1000
  assert_equal(1000, @pub.till())
end

def test_pub_starts_with_drinks
  assert_equal(3, @pub.drinks().length)
end

def test_can_sell_drink()
  @pub.sell_drink(@drink3)
  assert_equal(1080, @pub.till())
end

def test_pub_can_complete_transaction
  @pub.complete_transaction(@customer, @drink1)
  assert_equal(1010, @pub.till())
  assert_equal(90, @customer.wallet())
end






end
