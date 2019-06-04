# Largest Contiguous Sub-sum

# You have an array of integers and you want to find the largest contiguous 
# (together in sequence) sub-sum. 
# Find the sums of all contiguous sub-arrays and return the max.


    # largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])


# Phase I
# Write a function that iterates through the array and 
# finds all sub-arrays using nested loops. 
# First make an array to hold all sub-arrays. 
# Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

# def largest_contiguous_subsum(list)
#     subs = []
#     list.each_with_index do |ele, idx|  # n
#         list.drop(idx + 1).each_with_index do |ele2, idx2| #n
#             subs << list[idx..idx2] # 1
#         end
#     end

#     subs.max_by { |ele| ele.sum }.sum # m + 1
# end

# # o(n^2) + j
# p largest_contiguous_subsum(list) # => 8

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. 
# Keep a running tally of the largest sum.

# Get your story straight, and then explain your solution's time complexity to your TA.

list = [5, 3, -9, 15]
# 8
# -1
# 15
def largest_contiguous_subsum(arr)
    largest = 0 # 8
    maybe_largest = 0  # 16
    arr.each do |num| 
        maybe_largest += num
        if maybe_largest > largest
            largest = maybe_largest
        elsif maybe_largest < 0
            maybe_largest = 0
        end
    end
    largest
end



p largest_contiguous_subsum(list) # => 8

