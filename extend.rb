class Hello
	def initialize(name)
		@name = name
	end
end

module SayHello
	def say_hello
		puts "Hello #{@name}"
	end
end

hello = Hello.new("Juan")
hello.extend SayHello
hello.say_hello