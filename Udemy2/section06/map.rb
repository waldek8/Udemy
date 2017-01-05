strings = ["1", "3.0", "4", "67", "23.2"]
strings.map do |num|
	puts num.to_i
end

integers = strings.map(&:to_i)
p integers

double_letters = ("a".."h").map{|letter| letter*2}
p double_letters 

my_hash = Hash[[1, 2.1, 3.33, 0.9].map{|elem| [elem, elem.to_i]}]
p my_hash

my_hash2 = Hash[%w(kurka wodna jakie to zaplatane).map{|elem| [elem, elem.length]}]
p my_hash2

my_hash3 = {:a => "foo", :b => "bar"}.map{|a, b| "#{a}=#{b}"}
p my_hash3.join('&')