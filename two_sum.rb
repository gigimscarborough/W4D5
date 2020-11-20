def bad_two_sum?(arr, target_sum)
    
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele2, idx2|
            return true if idx2 > idx1

        end
    end


end



arr = [0, 1, 5, 7]
bad_two_sum?(arr, 6) # => should be true
bad_two_sum?(arr, 10) # => should be false