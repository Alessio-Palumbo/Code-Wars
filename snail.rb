def snail(array)
  solution = []
  until array.empty? do
    solution << array.shift
    if array.length > 1
      solution << array.map(&:pop)
      last_array = array.pop
      solution << last_array.reverse
      solution << array.reverse.map(&:shift)
    elsif array.length == 1
      last_array = array.pop
      solution << last_array.reverse
  
    else
      break
    end
  end
  solution.flatten
end
  

puts snail([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])
puts snail([[1,2,3],[4,5,6],[7,8,9]])
puts snail([])
puts snail([[36,35]])
puts snail([[1, 2, 3, 4, 5, 6], [20, 21, 22, 23, 24, 7], [19, 32, 33, 34, 25, 8], [18, 31, 36, 35, 26, 9], [17, 30, 29, 28, 27, 10], [16, 15, 14, 13, 12, 11]])

# Advanced solution
# def snail(array)
#   array.empty? ? [] : array.shift + snail(array.transpose.reverse)
# end