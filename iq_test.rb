# Find the odd number

def iq_test(numbers)
  arr = numbers.split
  odds = []
  evens = []
  arr.each_with_index do |n, idx|
    n = n.to_i
    if n % 2 == 0
      evens.push(idx+1)
    else
      odds.push(idx+1)
    end
  end
  
  if odds.length > 1
    puts evens[0]
  else
    puts odds[0]
  end
end

iq_test("2, 4, 7, 8, 10")