# Roman numerals decoder

def solution(roman)
  result = 0
  arr = []
  numbers = {"M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1}
  roman.chars.each do |x|
    numbers.each do |key, value|
      if key.to_s == x
        arr.push(value)
        break
      end
    end
  end

  arr.each_with_index do |x, idx|
    if idx == arr.length - 1
      result += arr[idx]
      break
    elsif x >= arr[idx + 1]
      result += x
    else
      result -= x
    end
  end
  result 
end

puts solution("MDXXVIII")