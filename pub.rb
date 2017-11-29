class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end


  def sell_drink(drink)
    @till += drink.price
  end

  def complete_transaction(customer, drink)
    customer.buy_drink(drink)
    sell_drink(drink)
  end












end
