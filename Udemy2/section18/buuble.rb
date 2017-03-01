# a = 7
# b = 8
# puts "#{a} #{b}"
# a, b = b, a
# puts "#{a} #{b}"

def bubble_sort(arr)
	n = arr.length
	#puts arr[0]
	loop do
	 	swapped = false
	 	(n-1).times do |i|
	 		#puts i
	 		if arr[i] > arr[i + 1]
	 			arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
	 		end
	 	end

	 	break if not swapped
	end
	arr
end

c = [24, 4, 1, 3, 4, 1, 3, 3]
p bubble_sort(c)