require 'rubygems'
require 'decisiontree'

attributes = ['temp']
training = [
	[36.6, 'zdrowy'],
	[37.0, 'zdrowy'],
	[37.6, 'chory'],
	[38.2, 'chory'],
	[39.0, 'umierajacy'],
	[40.0, 'martwy'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'chory', :continuous)
dec_tree.train

test = [39.8, 'zdrowy']

decision = dec_tree.predict(test)

puts "Prediction: #{decision}"
puts "Reality #{test.last}"