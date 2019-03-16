def mergesort array
  n = array.length
	return array if n == 1
	
	newArray = []
	array1 = mergesort array[0...n/2] 
	array2 = mergesort array[n/2...n]

	until newArray.length == n
		if array1.empty? 
			newArray << array2.shift
		elsif array2.empty?
			newArray << array1.shift
		else
			newArray.push(array1[0] < array2[0] ? array1.shift : array2.shift)
		end
	end
	return newArray

end

print mergesort [4,3,2,1]