#  arrays are just a collection of object references. 
# And unlike some other languages where arrays are fixed size, 
# in Ruby, arrays are expandable. 
# And you can access the elements inside the array using this index operator[].
# Operators are methods that could be overwritten. Arrays can be 
# indexed with negative numbers or ranges. arrays in Ruby are of heterogeneous
# types, they don't have to be the same type, they don't have to be
# all integers, or all strings. They could be whatever. It could have a string
# array, string integer or something else in the same array. 
#  %w to have multiple strings and parse them out into an array.


het_arr = [1, "two", :three] # Heterogeneous types
puts het_arr[1]
arr_words = %w{ what a great day today! }
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
p arr_words[-3, 2] # Go back 3 and take 2 words
p arr_words[2..4]

# Make a string out of array elements separated by ','
puts arr_words.join(',')

# Append using "push" or "<<" to the back of an array
# Remove elements using "pop" or "swift"
# Modify element using index operator "[]"

# Use "sample" to pull element(s) out or to sample
# Sort with "sort!" and "reverse!"

# In ruby stacks and queues are all arrays

stack = []; stack << "one"; stack.push ("two")
puts stack.pop

queue = []; queue.push "one"; queue.push "two"
puts queue.shift

a = [5,3,4,2].sort!.reverse!
p a
p a.sample(2) # 2 random elements

a[6] = 33
p a


# "each" loop through array
# "select" filter array by selecting
# "reject" filter array by recjecting
# "map" modify each element in the array

a = [1, 3, 4, 7, 8, 10, 11]
a.each {|num| print num}
puts

new_arr = a.select {|num| num > 4}
p new_arr
new_arr = a.reject {|num| num.even?}
p new_arr
new_arr = a.select {|num| num < 10}.reject {|num| num.even?}
p new_arr



