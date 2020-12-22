class BankAccount
    attr_accessor :balance, :status
    attr_reader :name, :deposit

    def initialize(name, balance=1000)
        @name = name
        @balance = balance
        @status = "open"
    end

    def deposit(deposit)
        @balance += deposit
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
          true
        else
          false
        end
      end

    def close_account
        @status = "closed"
    end
end
