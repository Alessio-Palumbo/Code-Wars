def rot13(string)
  new_string = ''
  string.chars do |x|
    if /[a-z]/.match(x)
      if (x.ord + 13) > 'z'.ord 
        diff = 12 - ('z'.ord - x.ord)
        new_string += ('a'.ord + diff).chr
      else
        new_string += (x.ord + 13).chr
      end
    elsif /[A-Z]/.match(x)
      if (x.ord + 13) > 'Z'.ord 
        diff = 12 - ('Z'.ord - x.ord)
        new_string += ('A'.ord + diff).chr
      else
        new_string += (x.ord + 13).chr
      end
    else
      new_string += x
    end
  end
  new_string
end

puts rot13("Test")
puts rot13("test")