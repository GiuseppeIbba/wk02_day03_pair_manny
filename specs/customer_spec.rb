require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup

    @customer = Customer.new("Dave", 100)
  end

def test_name()
  assert_equal("Dave", @customer.name)
end

def test_wallet_amount
  assert_equal(100, @customer.wallet)
end

end
