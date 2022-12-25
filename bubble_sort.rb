# Set swap counter to true
# Repeat below until swap counter stays at 0
#   - Reset swap counter to false
#   - Look at each adjacent pair
#     - If two adjacent elements are not 
#       in order, swap them
#     - Set swap flag to true


def bubble_sort list
  swap=true
  while swap  
    swap=false 
    list[0..-2].each_index do |i| 
      if list[i+1] < list[i]
        list[i], list[i+1] = list[i+1], list[i]
        swap=true
      end
    end
  end
  p list
  list
end

puts bubble_sort [4,3,78,2,0,2]
