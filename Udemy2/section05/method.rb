def first_method
	puts ["one", "two", "three"]
end

first_method

def second_method
	["four", "five", "six"]
end

puts second_method


#explicit return
def third_method
	x = 23
	return ["seven", "eight", "nine"] if x==2
	["ten", "eleven", "twelve"]
end

puts third_method