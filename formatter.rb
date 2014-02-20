module FormatAttributes
	def formats(*attributes)
		@format_attributes = attributes
	end

	def format_attributes
		@format_attributes
	end
end

module Formatter
	def display
		self.class.format_attributes.each do |attribute|
			puts "[#{attribute.to_s.upcase}] #{send(attribute)}"
		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter

	attr_accessor :name, :phone_number, :email, :experience
	formats :name, :phone_number, :email, :experience
end

resume = Resume.new
resume.name = "Juan Ferreira"
resume.phone_number = "800 123 5677"
resume.email = "anon@aol.com"
resume.experience = "Very experienced"

resume.display