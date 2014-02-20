class BankAccount
	def initialize(name)
		@name = name
		@transactions = []
	end

	def deposit(amount, option = {})
		option[:memo] ||= 'Regular deposit.'
		@transactions.push({:amount => amount, :memo => option[:memo]})
	end
end

bank_account = BankAccount.new("Juan Ferreira")
bank_account.deposit(100)
bank_account.deposit(50, {:memo => "Food deposit"})

puts bank_account.inspect