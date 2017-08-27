def solution(digits)
  solution = ""
  digits.chars.each_with_index do |digit, idx| 
    9.step(0, -1).each do |x|   
      if digit.to_i == x && (idx + 4).to_i < digits.length
        if solution < digits[idx, 5]
        solution = digits[idx, 5]
        end
      end
    end
  end
  puts solution 
end

solution("12981912982938928928398829290909899999999")