list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# Phase I
# First, write a function that compares each element to every other element of the list. 
# Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min(arr)
    arr.each do |num|
        return num if arr.select { |other_num| other_num > num }
    end
end

# O = n * n

p my_min(list) # =>  -5

def my_min(arr)
    min = arr[0]
    arr.each_with_index do |num|
        min = num if num < min
    end
    min
end

# O = n

p my_min(list) # =>  -5