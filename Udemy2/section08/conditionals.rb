# if
x = 8
y = 8
if x==y
    puts "equal"
else
    puts "not equal"
end

#unless
puts "equal" unless x!=y

#multiple
x = 100
y = 10

if y < x
	puts "y < x"
elsif x == y
	puts "y = x"
else
	puts "y > x"
end

#compounds
z = 10

if x != y && z == y
	puts "coumpund rocks"
end

if x != y and z == y
	puts "and coumpund rocks"
end

if x!=y || z==x
	puts "pipes"
end

if x!=y or z==x
	puts "or pipes"
end