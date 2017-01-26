#ruby gems
require 'rubygems'
require 'dish'

hash = {
	movie: "Terminator",
	actors:[
		{name: 'John', age: 18},
		{name: 'Sarah', age: 40},
		{name: 'T1000', age: 150}
	],
	favorite: true
}

media = Dish(hash)
puts media.movie
puts media.actors.length
puts media.actors[0].name
puts media.actors[0].age
puts media.favorite?

puts hash[:movie]
puts hash[:actors].length
puts hash[:actors][0][:name]
puts hash[:actors][0][:age]
puts hash[:favorite]