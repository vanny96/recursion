def fibs number
    array = [0, 1]
    return [0] if number == 1
    return array if number == 2
    for i in 2...number do
        array << array[i-1] + array[i-2]    
    end
    array
end

def fibs_rec number
    return [0] if number == 1
    return [0,1] if number == 2
    array = fibs_rec number-1
    array << array[-1] + array[-2]
end

print fibs_rec 2
print fibs 2