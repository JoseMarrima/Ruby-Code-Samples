# "HASHES" are considered as indexed collection of object references
# There are created with either {} or Hash.new
# HASHES are also called associative arrays because each element is 
# associate with a key(Index) that could be String, Int or anything
# The accessed using the [] operator and each value is set using the
# Hash racket(=>) when creating a hash
# To get a value from a hash u have to pass the key

# The below is not a block, but it is Hash
editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}

puts editor_props.length
puts editor_props["font"]

editor_props["background"] = "blue"
editor_props.each_pair do |key, value|
	puts "key #{key} value: #{value}"
end

# Hash return nil with u try to access a value which entry dont exist
# You can create hash using Hash.new(0) that will create a new hash with 
# a default value 0 when you try to access some value that doesnt exist

word_frequency = Hash.new(0)
sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

p word_frequency

# In Ruby if you a using symbols as keys, syntax is "symbol:"

# Below is example of hash using symbols
family_tree_19 = {oldest: "Jim", older: "Joe", :younger => "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19

def adjust_colors (props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end

adjust_colors
adjust_colors ({:foreground => "green"})
adjust_colors background: "yella"
adjust_colors :background => "magenta"

# If u do puts {:one => "one"} it will give syntax error, but
# to solve this use puts ({:one => "one"})
