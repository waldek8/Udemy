first_name = lambda {|name| name*5}
puts first_name["waldek"]

second_name = -> (name){name*3}
puts second_name["bartek"]
puts first_name.call("kaja")