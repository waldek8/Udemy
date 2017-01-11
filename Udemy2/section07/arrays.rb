x = [12, 65, 87, 98]
puts x

y = Array.new
y[0] = 7
y[8] = 56
p y

y.each {|i| puts i}

#deleting values
x = [1, 1.2, "ljuik", false, 8**2, 1, 5+6+7]
p x
puts x.length
x.delete(1)
p  x
puts x.length

x.delete_at(2)
p x

x = [56, 1, 44, 89, 10, 45, 3, 4]

x.delete_if do |ten|
    ten > 10
end

p x

#join
teams = ["chelsea", "arsenal", "liverpool", "city", "hotspurs", "united"]
p teams.join('; ')
p teams
teams.join(' - ')
p teams

#push && pop
 teams.push("everton");
 p teams
 teams.push("stoke", "wba")
 p teams
 teams.pop
 p teams
 