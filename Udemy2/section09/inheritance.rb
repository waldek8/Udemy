#inheritance
class FootballClub
	attr_accessor :country, :city

	def initialize(country: country="England", city: city)
		@country = country
		@city = city
	end

	def about
		puts "Club from #{@city}, #{@country}"
		secret_society
	end

	def logger
		puts "FootballClub starting..."
	end

	private
		def secret_society
			puts "Welcome to secret society"
		end
end

class ManUtd < FootballClub
	def score_goal
		puts "GOAL!!!!"
	end

	def logger
		super
		puts "Manchester United starting...."
	end
end

fc = ManUtd.new(country: "England", city: "Manchester");
fc.about
fc.score_goal

#private & public
#fc.secret_society

fc2 = FootballClub.new(country: "US", city: "Washington")
fc2.about
# fc.secret_society

#Polymorphism
fc.logger
fc2.logger