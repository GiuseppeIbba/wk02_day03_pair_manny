require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub")
require_relative("../drink")

class TestCustomer < MiniTest::Test

  def setup
    @drink3 = Drink.new("Wine", 30)
    @drink2 = Drink.new("Whisky", 20)
    @drink1 = Drink.new("Vodka", 10)
    @customer = Customer.new("Dave", 100)
  end

def test_customer_has_name()
  assert_equal("Dave", @customer.name())
end


def test_has_wallet()
  assert_equal(100, @customer.wallet())
end



# def test_can_spend_money()
#   @customer.wallet - @drink1.price
#   assert_equal(90, @customer.wallet())
# end
# #
def test_can_spend_money
  @customer.buy_drink(@drink3)
  assert_equal(70, @customer.wallet())
end

end
