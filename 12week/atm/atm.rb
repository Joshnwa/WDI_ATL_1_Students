class AutomaticTellerMachine

  def initialize(user)
    @user = user
  end

  def request_loop
    pin_check
    puts "Welcome"
    answer = nil
    until ["quit", "q"].include?(answer)
      answer = get_request
      process_request(answer)
    end
  end

  private

  def valid_action?(action)
    [
      "b", "balance",
      "d", "deposit",
      "w", "withdraw",
      "t", "transfer",
      "q", "quit"
    ].include?(action)
  end

  def get_request
    action = nil
    until valid_action?(action)
      puts "Please enter (b)alance, (d)eposit, (w)ithdraw, (t)ransfer, or (q)uit"
      action = gets.chomp
      puts "Not a recognized command." unless valid_action?(action)
    end
    action
  end

  def balance(account)
    puts "Your #{account.name} account balance is: #{'%.2f' % account.balance}"
  end

  def get_account(prompt)
    @user.accounts.each_with_index do |acct, index|
      puts "[#{index+1}] #{acct.name}"
    end

    puts prompt
    account_index = gets.chomp.to_i
    account = @user.accounts[account_index-1]
  end

  def process_request(action)
    case action
    when "deposit", "d"
      account = get_account("Select an account")
      account.deposit(get_amount(action))
      balance(account)
    when "balance", "b"
      account = get_account("Select an account")
      balance(account)
    when "withdraw", "w"
      account = get_account("Select an account")
      amount = get_amount(action)
      if account.balance >= amount
        account.withdraw(amount)
      else
        puts "Insufficient funds"
      end
      balance(account)
    when "transfer", "t"
      from_account = get_account("Select an account to transfer from")
      to_account   = get_account("Select an account to transfer to")
      amount = get_amount(action)
      if from_account.balance >= amount
        from_account.withdraw(amount)
        to_account.deposit(amount)
        balance(from_account)
        balance(to_account)
      else
        puts "Insufficient funds"
        balance(from_account)
      end
    when "quit", "q"
      puts "Goodbye."
    end
  end

  def get_amount(action)
    puts "How much do you want to #{action}?"
    gets.chomp.to_f
  end

  def pin_check
    counter = 0
    pin = nil

    while !@user.correct_pin?(pin) do
      puts "Please enter your pin"
      pin = gets.chomp.to_i

      if !@user.correct_pin?(pin)
        counter += 1
      end

      if counter == 3
        puts "Please wait..."
        sleep(3.0)
        counter = 0
      end
    end
  end
end
