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

# Instance Methods
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

# Instance Methods and Class Methods are very similar. However, Class Methods operate on the class rather than in instance of the class

# 3. Create a class that implements a “private” method. Why use private methods?
# All methods that follow after we call private will be made private and not accessible for outside objects. if with an argument, it alters the visibility of that argument to private

	private 
	def private_reset!
		@balance = 0
	end

	def reset_other_balance(other_account)
		other_account.protected_reset!
	end

# 4. Create a class that immplements a "protected" methods. Why use protected methods?
# A protected Method is very similar to a Private method, the big difference is that it can be called by other instance methods
# of the same class

	protected
	def protected_reset!
		@balance = 0
	end

end

# 6. Create 3 classes. They should be named "Vehicle", "Car", "Truck". Car and Truck should inherit from "Vehicle"
# we can override a method if the method inside the superclass does not do what we'd expect inside the inherited class or child class

class Vehicle
	attr_accessor :brand, :name
	def initialize(name)
		@name = name
	end

	def name
		return @name
	end
end

class Car < Vehicle
	def name
		"This car is a " + super
	end
end

class Truck < Vehicle
end


# time = 2 days












