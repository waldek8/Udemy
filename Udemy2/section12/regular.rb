#reg_ex
string = "the quick 12 brown foxes jumped over the 10 lazy dogs"

puts string =~ /o/

puts string =~ /z/ ? "He ir it is" : "Null"

#case insensitive
puts string =~ /Q/i ? "q is here" : "no q"

#look for integers
puts string.to_enum(:scan, /\d+/).map { Regexp.last_match }

#email matcher

#ip adress matcher

#wheel of fortune. Bug included. Only one letter opens
hello_sentence = "Hi from magic land"
sentence_array = hello_sentence.split("").map(&:downcase)
accurate_count = sentence_array - [" "]
final_sentence = hello_sentence.gsub(/[a-zA-Z]/, "_").split("")

p sentence_array
p accurate_count
p final_sentence

while sentence_array.count("") < accurate_count.count
	puts "Guess a letter:"
	guess = gets.downcase.chomp

	if sentence_array.include?(guess)
		letter_index = sentence_array.find_index(guess)
		sentence_array[letter_index] = ""
		final_sentence[letter_index] = guess
		puts "#{final_sentence.join}"
	else
		puts "Wrongg!!!"
	end
end