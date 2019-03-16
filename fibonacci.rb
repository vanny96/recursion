def fibs number
    array = [0, 1]
    for i in 2..number do
        array << array[i-1] + array[i-2]    
end