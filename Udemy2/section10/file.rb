#creating a file
File.open("file.txt", "w+") do |f|
	f.write("Chelsea, Tottenham, Arsenal, Liverpool, City, United")
end

new_file = File.new("teams.txt", "w+")
new_file.puts("London, London, London, Liverpool, Manchester, Manchester")
new_file.close

#reading from file
teams = File.read("file.txt")
cities = File.read('teams.txt')

puts teams.split(', ') + cities.split(', ')

#deleting files
#File.delete('file.db')

#appending
8.times do
	sleep 1
	File.open("log.txt", "a") do |f|
		f.puts "Time: #{Time.new}"
	end
end