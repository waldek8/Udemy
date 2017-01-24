#grep
arr = [1, 2, 3, 4, 8, 6, 8, 2, 8, 11, 8]
arr2 = arr.grep(8)
p arr2

#grep insteadd of select and map
arr = ["machester united", "leeds united", "chelsea", "machester city", "west ham united", "arsenal"]
arr2 = arr.select{|x| x =~ /united/}
p arr2
arr3 = arr2.map{|x| x[0..-3]}
p arr3

# arr2 = arr.grep(/(united)\ed/){$1}
# p arr2