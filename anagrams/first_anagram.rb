

def first_anagram?(first, second)
    first.chars.permutation.map(&:join).include?(second)
end

# o(n!)

p 'first'
p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true
puts

def second_anagram?(first, second)
    return false if first.length != second.length
    first.each_char do |char| # n
        index = second.chars.find_index(char) # n
        if index != nil
            second.sub!(second[index], "") # n or 1
        else
            return false 
        end
    end
    second.length == 0 
end

# # o(n^2)

p 'second'
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true
puts

def third_anagram?(first, second)
    first.chars.sort == second.chars.sort # n + j
end

# o(n) + o(j)
# nlog(n) + jlog(j)

p 'third'
p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true
puts

def fourth_anagram?(first, second)
    first_hash = Hash.new(0) # 1
    second_hash = Hash.new(0) # 1

    first.each_char do |char| # n
        first_hash[char] += 1
    end

    second.each_char do |char| # j
        second_hash[char] += 1
    end

    first_hash == second_hash # 1
end

# o(n) + o(j)

p 'fourth'
p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
puts

def bonus?(first, second)
    hash = Hash.new(0)
    
    first.each_char do |char|
        hash[char] += 1
    end

    second.each_char do |char|
        hash[char] -= 1
    end

    hash.values.all? { |value| value == 0 }
end

# o(n)

p 'bonus'
p bonus?("gizmo", "sally")    #=> false
p bonus?("elvis", "lives")    #=> true
puts   