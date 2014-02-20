# Testing while loop
i = 0

while i <= 10
	puts "i is now #{i}"
	i += 1
end

puts "The final value of i is #{i}"

# Testing until loop
j = 0

until j > 10 do
	puts "The final value of j is #{j}"
	j += 1
end

puts "The final value of j is #{j}"

#Testing for loop
for k in 0..10 do
	puts "k is now #{k}"
end

puts "The final value of k is #{k}"