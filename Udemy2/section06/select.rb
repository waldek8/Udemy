(1..20).to_a.select do |number|
	puts number.odd?
end

(1..20).to_a.select(&:even?)

my_arr = %w(THe quick brown fox jumped over the lazy dog)

my_arr.select do |word|
	if word.length > 3 
		puts word
	end
end

my_letters = %w(a b c d e f g h i j k l m n o p)

vowels = my_letters.select do |let|
	let =~ /[euioa]/
end

puts vowels