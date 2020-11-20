    # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    # my_min(list)  # =>  -5

    # # def my_min(list)
    #     smallest = list.first
    #     (0...list.length).each do |idx1|
    #         (0...list.length) do |idx2|
    #             list[idx1] > list[idx2]
    #         end
    #     end
    # end

    # def my_min(list)
    #     smallest = list.first
    #     list.each do |ele|
    #         smallest = ele if ele < smallest
    #     end
    #     smallest
    # end

    # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    # p my_min(list)  # =>  -5


    def largest_contiguous_subsum(list)
        subs = []
        (0...list.length).each do |start_idx|
            (0...list.length).each do |end_idx|
                subs << list[start_idx..end_idx]
            end
        end
        subs.map! { |ele| ele.sum }.max
        
    end


list = [5, 3, -7]
 p largest_contiguous_subsum(list)

 