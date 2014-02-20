def get_name(&block)
	puts "Please enter your name:"
	name = gets.chomp
	yield name
	puts "It was nice to meet you #{name}."
end

get_name do |name|
	puts "Hi #{name}"
	name = name.upcase
	puts "Your name uppercased is #{name}."
end