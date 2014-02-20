# for next example
for animal in %w(Cat Dog Mouse Bear) do
	next if animal == "Cat"
	puts "Animal1 in the array is #{animal}"
end

# for break example
for animal in %w(Cat Dog Mouse Bear) do
	break if animal == "Dog"
	puts "Animal2 in the array is #{animal}"
end

# loop do example
loop do
	puts "What is your name?"
	name = gets.chomp
	if name == "Juan"
		puts "We've been expecting your Mr. #{name}"
		break
	end
end

# retry and redo example
animals = %w(snake frog mouse bat)
count = 0

for animal in animals do
	puts "The current animal is #{animal}"
	break if count == 10
	count += 1
	redo if animal == "mouse"
end