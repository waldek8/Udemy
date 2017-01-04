def nba_club(city, name)
	city+" "+name
end

puts nba_club("LA", "Lakers")

def nba_club2 city, name
	city+" "+name
end

puts nba_club2 "Miami", "Heat"

#Named arguments
def football_club city:, name:
	puts city+" "+name
end

football_club name: "United", city: "Manchester"

#default arguments
def netflix title:, lang: "POL"
	puts "Streaming: "+title+" in "+lang
end

netflix title: "Avengers"
netflix title: "Batman", lang: "ENG"
netflix lang: "ESP", title: "Narcos"

#arguments as arrays (splat arguments)
def top4 *teams
	p teams
end

top4 "Chelsea", "Liverpool", "Manchester City", "Arsenal"

#hash as arguments
def game_of_the_year **games
	games.each do |title, score|
		puts "Title: #{title} with #{score} \n"
	end
end

games_data = {
	"Uncharted 4": "10.0",
	"Overwatch": "9.9",
	"Dishonored 2": "9.8",
	"The Last Guardian": "9.7"
}

game_of_the_year games_data

#optional arguments
def scores options={}
	puts options[:game]
	puts options[:score]
	puts options[:referee]
end

scores game: "MU-STH", score: "2-0", referee: "Mike Dean"
scores score: "4-1", game: "MU-Chelsea"