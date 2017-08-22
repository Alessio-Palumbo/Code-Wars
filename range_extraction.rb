# return array formatted with commas or dash if more than 3 consecutive numbers

def solution(list)
  result = ""
  list.each_with_index do |x, idx|
    next_num = list[idx + 1]
    prev_num = list[idx - 1]
    if x == list[0]
      result += "#{x}"
    elsif next_num == (x + 1)
      if prev_num == (x - 1)
        next
      else
        result += ",#{x}"
      end
    else
      if prev_num == (x - 1) && list[idx - 2] == (x - 2)
        result += "-#{x}"
      else
        result += ",#{x}"
      end
    end
  end
  result
end


puts solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
