class Kurka
	#Class method
	def self.print_out
		"Printed out myself"
	end

	#Instance method
	def just_printing
		"Printing instance"
	end
end

puts Kurka.print_out

kurka = Kurka.new
puts kurka.just_printing