sum = 0
(1..100).inject(:*).to_s.split(//).each{|elem| sum += elem.to_i}
p sum