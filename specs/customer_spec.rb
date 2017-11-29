require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub")
require_relative("../drinks")

class TestCustomer < MiniTest::Test

  def setup
    # @drink3 = Drink.new("Wine", 30)
    # @drink2 = Drink.new("Whisky", 40)
    # @drink1 = Drink.new("Vodka", 50)
    @customer = Customer.new("Dave", 100)
  end

def test_name()
  assert_equal("Dave", @customer.name())
end

# def test_wallet()
#   assert_equal(100, @customer.wallet())
# end


def test_wallet_full()
  assert_equal(100, @customer.money_count)
end



# def test_can_spend_money()
#   @customer.wallet - @drink1.price
#   assert_equal(90, @customer.wallet())
# end
# #
# def test_can_spend_money
#   @customer.pay(30)
#   assert_equal(70, @customer.wallet())
# end

end
