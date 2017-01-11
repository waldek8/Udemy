manU = {
    forward: 'rooney',
    midfielder: 'carrick',
    defender: 'shaw',
    goalkeeper: 'de gea'
}

p manU

manU2 = {
    :forward=>'zlatan',
    :midfielde=>'pogba',
    :defender=>'valencia',
    :goalkeeper=> 'romero'
}

p manU2

manU3 = {
    'forward'=>'zlatan',
    'midfielder'=>'pogba',
    'defender'=>'valencia',
    'goalkeeper'=> 'romero'
}

p manU2[:defender]

#deleteFromHash
manU3.delete('defender')
p manU3

manU2.delete(:goalkeeper)
p manU2

#iterating
manU.each_key {|key| puts key}

manU.each_value do |value|
    puts value
end

#adding to hash 
manU[:manager] = 'jose'
p manU
p manU.invert

p manU.merge(manU2)

#to array
p manU.to_a

#keys && values
p manU.keys
p manU.values