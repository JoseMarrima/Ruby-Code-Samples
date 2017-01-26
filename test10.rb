# Blocks

# The convention is that you use the curly braces when the block content 
# is a single line, and if a block content spans multiple lines you pass 
# it in between the do and end key words. 
# And blocks are often used as iterators.


1.times {puts "Hello World"}

2.times do |index|
	if index > 0
		puts index
	end
end

2.times {|index| puts index if index > 0 }


# Implicit to config a method using blocks

def two_times_implicit
	return "No block" unless block_given?
	yield
	yield
end

puts two_times_implicit {print "Hello"} # => HelloHello

puts two_times_implicit # => No block





# Explicit to config a method using blocks

def two_times_explicit (&i_am_a_block)
	return "No block" if i_am_a_block.nil?
	i_am_a_block.call
	i_am_a_block.call
end


puts two_times_explicit # => No block

two_times_explicit { puts "Hello "} # => Hello 
									# => Hello


