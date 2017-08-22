def reverse_polish_notation(expr)
  result = 0
  temp = []
  str = expr.split(' ')
  str.each do |x|
    if /[0-9]/.match(x)
      temp.push(x.to_f)
    elsif /[\/\+\-\*]/.match(x)
      if !temp.empty?
        operator = x.to_sym
        result = temp[-2, 2].inject(x)      
      end
      temp.pop(2)
      temp.push(result)
    else
      return false
    end
  end
  if result == 0 && !temp.empty?
    temp[-1]
  else
    result
  end
end

puts reverse_polish_notation("5 2 1 + 4 * + 3 -")