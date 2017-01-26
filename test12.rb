# Strings

# Single-quote literal strings are very literal, they show almost
# everything else as is.

# Double-quoted strings allow string interpolation and interpret special
# characters like \n and \t

single_quoted = 'Ice cream \n followed by it\'s a party! '
double_quoted = "Ice cream \n followed by it\'s a party! "

puts single_quoted
puts double_quoted


# Example of String Interpolation
def multiply(one, two)
	"#{one} multiplied by #{two} equals #{one * two}" 
end

puts multiply(5, 3)

# String methods ending with "!" modify the existing string
# Most of string methods return a new string

# To create long multiline String we use %Q{Long multiline string}

# Very important to master string API

my_name = " tim"
puts my_name.lstrip.capitalize # creates a copy of the String my_name and
# makes the first character capitalized and lstrip to less strip to remove
# the space at the beginning
puts my_name # here u will notice that my_name string did not change
my_name.lstrip! # The '!' is used to modify my_name instead of make a copy
my_name[0] = 'K' # This will re
puts my_name # It will print Kim

cur_weather = %Q{It's a hot day outside 
				Grab your umbrellas...} # It will print multiple lines

cur_weather.lines do |line| # .lines that breaks a string in multilines
	line.sub! 'hot', 'rainy' # substitute hot with rainy
	puts "#{line.strip}"
end


# SYMBOLS ARE HIGHLY OPTIMIZED STRINGS example ":foo-"
# SYMBOLS are unique and immutable
# Can be converted to String with to_s or string to symbol with to_sym
# "Hello".methods.grep /case/





