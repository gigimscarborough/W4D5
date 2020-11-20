anagram?("gizmo", "sally")    #=> false
anagram?("elvis", "lives")    #=> true


def permutations(array)
    return [array] if array.length <= 1

    first = array.shift

    perms = permutations(array)
    total = []

    perms.each do |perm|
        (0..perm.length).each do |i|
            total << perm[0...i] + [first] + perm[i..-1]
        end
    end
    
    total
end

arr1 = [1, 2]
arr2 = [1, 2, 3]

p permutations(arr1)
p permutations(arr2)