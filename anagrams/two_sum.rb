def bad_two_sum?(arr, target_sum)
    all_pairs = arr.combination(2).to_a # n^2
    all_pairs.any? { |pair| pair.sum == target_sum} # n
end

arr = [0, 1, 5, 7]
p 'bad'
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
puts

def okay_two_sum?(arr, target_sum)
    all_pairs = arr.combination(2).to_a.map { |pair| pair.sum } # n^2 + n + n
    all_pairs.bsearch { |x| x == target_sum } != nil   # log(n)
end

# log(n) + n^2 + n

# def two_sum?(arr, target_sum)
#     # your code here...
# end

p 'okay'
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
puts



# Hash Map
# Finally, it's time to bust out the big guns: a hash map. 
# Remember, a hash map has O(1) #set and O(1) #get, 
# so you can build a hash out of each of the n elements in your array in O(n) time. 
# That hash map prevents you from having to repeatedly find values in the array; 
# now you can just look them up instantly.

# See if you can solve the two_sum? problem in linear time now, 
# using your hash map.

# Once you're finished, make sure you understand the 
# time complexity of your solutions and then call over your TA and 
# show them what you've got. Defend to them why each of your 
# solutions has the time complexity you claim it does.


# class HashMap

#     def initialize
#         @map = {}
#     end

#     def get(key)
#         @map[key]
#     end

#     def set(key, value)
#         @map[key] = value
#     end

# end
 # I think its returning true for 10 because of 5, we subtract 5 from 10, then 5
 # exsists in the hash
arr = [0, 1, 5, 7]

def two_sum?(arr, target_sum)
    hash = {}

    arr.each do |el|
        return true if hash[el]
        hash[target_sum - el] = true
    end
    false
end

p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

# hash {
#     6 => true
#     5 => true
#     1 => true
#     -1 => true
# }

