class Account

  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
