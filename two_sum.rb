def bad_two_sum?(arr, target_sum)
    pair_sums = []

    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx
                pair_sums << ele + ele2
            end
        end
    end
    pair_sums.include?(target_sum)
end


arr = [0, 1, 5, 7]
bad_two_sum?(arr, 6) # => should be true
bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
    sorted = arr.sort

    i = 0
    j = sorted.length - 1

    until i == j
        case (sorted[i] + sorted[j]) <=> target_sum
        when 0
            return true
        when -1
            i += 1
        when 1
            j -= 1
        end
    end
    false
end


arr = [0, 1, 5, 7]
okay_two_sum?(arr, 6) # => should be true
okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target_sum)
    
end

arr = [0, 1, 5, 7]
okay_two_sum?(arr, 6) # => should be true
okay_two_sum?(arr, 10) # => should be false