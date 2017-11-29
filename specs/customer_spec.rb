require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup

    @customer = Customer.new("Dave", 100)
  end

def test_name()
  assert_equal("Dave", @customer.name())
end

def test_wallet
  assert_equal(100, @customer.wallet())
end
# 
# def test_can_spend_money
#   @customer.pay(30)
#   assert_equal(70, @customer.wallet())
# end

end
