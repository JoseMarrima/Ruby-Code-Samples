# Reading a file "text.txt" in Ruby


File.foreach('test.txt') do |line|
	puts line
	p line
	p line.chomp # chops off newline character
	p line.split # array of words in line
end



# Handling Exceptions

begin

	File.foreach( 'do_not_exist.txt' ) do |line|
		puts line.chomp
	end

rescue Exception => e # The exception error is mapped to var e
	puts e.message
	puts "Let's pretend this didn't happen..."
end


# Alternative to Exceptions

if File.exist? 'test.txt'

	File.foreach( 'test.txt' ) do |line|
		puts line.chomp
	end

end


# Writing to a file

File.open("test1.txt", "w") do |file|
	file.puts "One line"
	file.puts "Another"
end


# Read Environment Variable

puts ENV["Editor"] # => subl

