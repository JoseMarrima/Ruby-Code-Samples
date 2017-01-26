class Person
	def initialize(name, age)  # "CONSTRUTOR"
		@name = name
		@age = age
	end

	def get_info
		@additional_info = "interesting"
		"Name: #{@name}, age: #{@age}"
	end
end

person1 = Person.new("Joe", 21)
p person1.instance_variables
puts person1.get_info
p person1.instance_variables
puts

# SETTERS AND GETTERS

class Person_Set_Get
	def initialize (name, age) # "Constructor"
		@name = name
		@age = age
	end

	def name # GETTER
		@name
	end

	def name= (new_name) # SETTER, novo can be substituted by name=
		@name = new_name
	end
end

person2 = Person_Set_Get.new("Joe", 14)
puts person2.name
person2.name= ("Mike")
puts person2.name
person2.name= "Nino" # here in case is name=, we can use name = "Nino" also, instead of name= "Nino"
puts person2.name
puts

# Use "attr_accessor" to create getters and setters
# Use "attr_reader" to create a getter only
# Use "attr_writer" to create a setter only

class Person_acessors
	attr_accessor :name, :age # getters and setters for name and age
end

person3 = Person_acessors.new
p person3.name
person3.name = "Mike" # Setting method name 
person3.age = 15 # Setting method age
puts person3.name
puts person3.age
person3.age = "fifteen" # Notice that we assigned an integer first and now a string but it will not return a error
puts person3.age
puts

class Person_last
	attr_reader :age
	attr_accessor :name

	def initialize (name, ageVar)
		@name = name
		self.age = ageVar
		puts age
	end

	def age= (new_age)
		@age = new_age unless new_age > 120
	end
end

person4 = Person_last.new("Jim", 33)
puts "My name is #{person4.name} and my age is #{person4.age}"





