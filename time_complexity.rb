# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min(list)  # =>  -5

def my_min(list)
    smallest = list.first
    
    (0...list.length).each do |idx1|
        (0...list.length).each do |idx2|
            if list[idx2] < smallest
                smallest = list[idx2]
            end
        end
    end

    smallest
end

# def my_min(list)
#     smallest = list.first
#     list.each do |ele|
#         smallest = ele if ele < smallest
#     end
#     smallest
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5


def largest_contiguous_subsum(list)
    subs = []
    (0...list.length).each do |start_idx|
        (0...list.length).each do |end_idx|
            subs << list[start_idx..end_idx]
        end
    end
    subs.map! { |ele| ele.sum }.max
    
end



# list = [5, 3, -7]
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7





def largest_contiguous_subsum(list)
    curr_largest = list.first
    curr_sum = 0

    i = 0

    while i < list.length
        curr_sum += list[i]
        curr_largest = curr_sum if curr_sum > curr_largest
        curr_sum = 0 if curr_sum < 0
        i += 1
    end

    curr_largest
end


list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]
# p largest_contiguous_subsum(list1)
# p largest_contiguous_subsum(list2)
# p largest_contiguous_subsum(list3)
