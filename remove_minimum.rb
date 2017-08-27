
# Given an array of integers, remove the smallest value. Do not mutate the original array/list. 
# If there are multiple elements with the same value, remove the one with a lower index. 
# If you get an empty array/list, return an empty array/list.
# Don't change the order of the elements that are left

def remove_smallest(numbers)
  if numbers.empty?
    return numbers
  end
  smallest = numbers.sort.shift
  new_array = numbers
  new_array.delete(smallest)
  new_array.uniq 
end

puts remove_smallest([1, 2, 3, 4, 5]) #[2, 3, 4, 5]
puts remove_smallest([5, 3, 2, 1, 4]) #[5, 3, 2, 4]
puts remove_smallest([])

