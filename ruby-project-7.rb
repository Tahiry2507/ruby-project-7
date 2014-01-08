# 1. Create a ruby class that uses "class variables" and "instance variables".

class Cars
	@@name = "Toyota"
	def self.name
		@@name
	end
end

# puts Cars.name

class Fortuner < Cars
	@name = "Toyota Fortuner FWD"
	def self.name
		@name
	end
end

puts Fortuner.name
puts Cars.name

# the difference between these 2 variables is:
# An instance variable is scoped within a specific instance while a class variable is shared across all instances of that class.

# 2. Create a ruby class that uses "class methods" and "instance methods"

class Credits
	def initialize(first_name, last_name)
		@credits = 0
		@first_name = first_name
		@last_name = last_name
	end

	def added(amount)
		@credits += amount
	end

	def spent(amount)
		@credits -= amount
	end
end

class BankAccount

	def self.create_for(first_name, last_name)
		@accounts ||= []
		@accounts << BankAccount.new(first_name, last_name)
	end

	def initialize(first_name, last_name)
		@balance = 0
		@first_name = first_name
		@last_name = last_name
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end
end














