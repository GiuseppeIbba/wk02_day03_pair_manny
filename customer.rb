class Customer


  attr_reader :name, :wallet

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def money_count()
   @wallet
  end


end
