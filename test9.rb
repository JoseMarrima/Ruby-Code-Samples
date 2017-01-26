# In ruby to define methods or functions using parenteses is optional.
# Every Method or function in Ruby is has at least one class it belongs
# to although you won't always see it written inside a class, 


def simple
	puts "no parents"
end

def simpleParents()
	puts "yes parents"
end

simple
simple()

simpleParents()
simpleParents


# In method no need to define the type of parameters and it can return 
# Whatever it wants. the RETURN KEYWORD is Optional also in Ruby (the last
# value is returned in ruby).

def add(one, two)
	one + two
end

def divide(one, two)
	return "I don't think so" if two == 0
	one / two
end


puts add(2, 2)
puts divide(2, 0)
puts divide(12, 4)


# Expressive Methods Names can end If "!" or "?"
# "?" Predicate methods and "!" Dangerous side effects
# Methods that end with "?" are predicate methods, return Boolean values
# Ruby has a method called zero which is a predicate. 

def can_divide_by?(number)
	return false if number.zero?
	true
end

puts can_divide_by? 3 # Return true
puts can_divide_by? 0 # Return false


# In Ruby Methods can have default arguments.

def factorial (n)
	n == 0? 1 : n * factorial(n - 1) # ":" means otherwise or Else
end

def factorial_with_default_args (n = 5)
	n == 0? 1 : n * factorial_with_default_args(n - 1)
	 # ":" means otherwise or Else
end

puts factorial (5)
puts factorial_with_default_args
puts factorial_with_default_args (3)


# Slap is used when you have a bunch of parameters that you want 
# to pass but you don't know how many. . You want all the parameters
# to be treated as one parameter, and all those parameters become one 
# big array inside the method. 
# Slap can be used the middle parameter, not jsut the last one

def maximo (one_param, *numbers, another)
	# variable length parameters passed in become an array
	numbers.max
end

puts maximo("something", 7, 32, -4, "more")


