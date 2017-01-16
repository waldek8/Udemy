#getter and setter
class ApiConnector
    attr_accessor :title, :description, :url
    
    def test_method
        puts "testing ApiConnector"
    end
end

api = ApiConnector.new
api.title = "jesus"

puts api.title

api.test_method

#initializer
class ManUtd
    attr_accessor :coach, :titles
    
    def initialize(coach, titles = 18)
        @coach = coach
        @titles = titles
    end
    
    def about
        puts "#{@coach} has won #{@titles} titles"
    end
    
end

manutd = ManUtd.new("jm", 20)

#puts "#{manutd.coach} has won #{manutd.titles}"
manutd.about

manutd2 = ManUtd.new("saf")
manutd2.about


class ManUtd3
    attr_accessor :coach, :titles, :stadium
    
    def initialize(coach: coach, titles: titles, stadium: stadium="OT")
        @coach = coach
        @titles = titles
        @stadium = stadium
    end
    
    def about
        puts "#{@coach} has won #{@titles} titles on #{@stadium}"
    end
end

club = ManUtd3.new(stadium: "Wembley", titles: 2, coach: "SAF")
club.about

club = ManUtd3.new(titles: 1, coach: "LVG")
club.about