def next_bigger(n)
  digits = n.to_s.split('')
  idx = digits.length-2
  while idx >= 0
    bigger = digits.slice(idx..-1)   
    bigger = bigger.sort
    bigger.each do |x|
      if x > digits[idx]
        bigger.delete_at(bigger.index(x))
        bigger.unshift(x)
        break
      end
    end
    bigger = (n.to_s.slice(0...idx) + bigger.join).to_i
    if bigger > n 
      return bigger
    end
    idx -= 1
  end 
  return -1
end


puts next_bigger(12)#,21)
puts next_bigger(513)#,531)
puts next_bigger(2017)#,2071)
puts next_bigger(414)#,441)
puts next_bigger(144)#,414
puts next_bigger(1234567890) # 1234567908
puts next_bigger(9876543210)
