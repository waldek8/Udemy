my_array = [12, 23, 34, 45, 56, 67]

my_array.each do |elem|
	puts elem**2
end

my_array.each {|elem| puts elem*2}