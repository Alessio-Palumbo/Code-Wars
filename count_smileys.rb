# return number of smileys that have the right format

def count_smileys(arr)
  count = 0
  arr.each do |x|
    if /[:;][-~]?[)D]/.match(x)
      count += 1
    end
  end
  return count    
end

puts count_smileys([":)", ";-(", ";-)"])