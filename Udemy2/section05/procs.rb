address = Proc.new{|street, house| street+" "+house}
puts address["Reisleravos", "26"]
puts address.call("Umedziu", "101")

phone = Proc.new do |first, last|
	last+" "+first
end

puts phone["1234", "9876"]