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
end
