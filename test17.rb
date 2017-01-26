
# The "||" the double pipe operator evaluate the left side and if it true returns it, else return the right side

class Person
	attr_reader :age
	attr_accessor :name

	def initialize (name, age)
		@name = name
		self.age = age
	end

	def age= (new_age)
		@age ||= 5 # default, if age is nil or false it will use the value 5
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("Kim", 145)
puts person1.age
person1.age = 10
puts person1.age 
person1.age = 200
puts person1.age
puts


class MathFunctions
	def self.double(var)
		times_called; var * 2;
	end
	class << self
		def times_called
			@@times_called ||= 0; @@times_called += 1
		end
	end
end
def MathFunctions.triple(var)
	times_called; var * 3
end

puts MathFunctions.double 5
puts MathFunctions.double(5)
puts MathFunctions.triple 4
puts MathFunctions.times_called 
puts

class Dog
	def to_s
		"Dog"
	end
	def bark
		"barks loudly"
	end
end
class SmallDog < Dog  # "<" Denotes Inharitance
	def bark # Overrides
		"Barks quitely"
	end
end

dog = Dog.new
small_dog = SmallDog.new
puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"

