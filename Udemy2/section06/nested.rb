clubs = {
	"manchester united" => {
		"manager" => "jose",
		"top scorer" => "zlatan",
		"top assister"=> "miki"
	},
	"manchester city" => {
		"manager" => "pep",
		"top scorer" => "the kun",
		"top assister"=> "fernandinho"
	}
}

clubs.each do |club, staff|
	puts club
	staff.each do |title, name|
		puts "Award #{title}. The winnner is...: #{name}"
	end
end