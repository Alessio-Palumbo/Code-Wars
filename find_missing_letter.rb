def find_missing_letter(arr)
  alphabet = ('A'..'Z').to_a + ('a'..'z').to_a
  new_arr = []
  alphabet.each_with_index do |x, idx|
    if x == arr[0]
      length = arr.length + 1
      length.times do |l|
        new_arr.push(alphabet[idx])
        idx += 1
      end  
    end
  end
  result = new_arr - arr
  result.join
end

puts find_missing_letter(['c', 'd', 'f'])
puts find_missing_letter(['A','C','E'])
