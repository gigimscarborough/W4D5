
def anagram?(word_1, word_2)
    first_words = word_1.split("").permutation
    perms = first_words.map { |perm_word| perm_word.join("") }
    perms.any? { |permutation| permutation == word_2 }
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true

def permutations(array)  #O(n!) - factorial
    return [array] if array.length <= 1

    first = array.shift

    perms = permutations(array) # recursive (n-1)- n! b/c factorial
    total = []

    perms.each do |perm|
        (0..perm.length).each do |i|
            total << perm[0...i] + [first] + perm[i..-1]
        end
    end
    
    total
end

# Write a method #second_anagram? that iterates over the first string. 
# For each letter in the first string, find the index of that letter in 
# the second string (hint: use Array#find_index) and delete at that index. 
# The two strings are anagrams if an index is found for every letter and the 
# second string is empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between 
# #first_anagram? and #second_anagram??

def second_anagram?(word_1, word_2) #O(n^2)
    matching_word = word_2.split("")

    word_1.each_char do |ele|
        if matching_word.index(ele) #evaluating the conditional
            matching_word.delete_at(matching_word.index(ele)) #n many times, do this
        end
    end

    matching_word.empty? #constant O(1)
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


# Write a method #third_anagram? that solves the problem by sorting both strings alphabetically. The strings are then anagrams if and only if the sorted versions are the identical.

# What is the time complexity of this solution? Is it better or worse than #second_anagram??

def third_anagram?(word_1, word_2) #O(nlogn)
    word_1.split("").sort == word_2.split("").sort #.sort is O(n logn), linearithmic

    # sorted_word_1 = word_1.split("").sort #could have all been split into diff lines that's why we don't assume it's a nested .split * .sort
    # sorted_word_2 = word_2.split("").sort

    # sorted_word_1 == sorted_word_2
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true


# Write one more method #fourth_anagram?. This time, use two Hashes to store the number of times each letter appears in both words. Compare the resulting hashes.

def fourth_anagram?(word_1, word_2) #O(n)
    count1 = Hash.new(0)    
    word_1.each_char { |char| count1[char] += 1 }

    count2 = Hash.new(0)    
    word_2.each_char { |char| count2[char] += 1 }

    count1 == count2
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true


# arr1 = [1, 2]
# arr2 = [1, 2, 3]

# p permutations(arr1)
# p permutations(arr2)