def say_hello(&block)
	puts "Hello world!"
	if block_given?
		block.call
	end
end

say_hello
say_hello{ puts "Hello again"}

def header(&block)
	puts "This is our header"
	block.call
rescue
	puts "Error has been rescued"
ensure
	puts "I'm inside the ensure block"
end

header do 
	puts "This is the body"
	raise "This is an error"
end