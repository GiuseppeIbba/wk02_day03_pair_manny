class Customer


  attr_reader :name, :wallet

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def customer_name()
    return name
  end


end
