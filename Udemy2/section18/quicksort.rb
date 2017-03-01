class Array
	def quicksort
		return [] if empty?
		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))

		return *left.quicksort, pivot, *right.quicksort
	end
end

arr = [56, 8, 1, 985, 34, 6, -5, 4, 0]
p arr.quicksort