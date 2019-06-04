

def first_anagram?(first, second)
    first.chars.permutation.map(&:join).include?(second)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true


