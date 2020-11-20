
def anagram?(word_1, word_2)
    first_words = word_1.split("").permutation

    perms = first_words.map { |perm_word| perm_word.join("") }

    perms.any? { |permutation| permutation == word_2 }

end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true

# Write a method #second_anagram? that iterates over the first string. 
# For each letter in the first string, find the index of that letter in 
# the second string (hint: use Array#find_index) and delete at that index. 
# The two strings are anagrams if an index is found for every letter and the 
# second string is empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between 
# #first_anagram? and #second_anagram??

def second_anagram?(word_1, word_2)
    matching_word = word_2.split("")

    word_1.each_char do |ele|
        if matching_word.index(ele)
            matching_word.delete_at(matching_word.index(ele))
        end
    end
    matching_word.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true


# def permutations(array)
#     return [array] if array.length <= 1

#     first = array.shift

#     perms = permutations(array)
#     total = []

#     perms.each do |perm|
#         (0..perm.length).each do |i|
#             total << perm[0...i] + [first] + perm[i..-1]
#         end
#     end
    
#     total
# end

# arr1 = [1, 2]
# arr2 = [1, 2, 3]

# p permutations(arr1)
# p permutations(arr2)