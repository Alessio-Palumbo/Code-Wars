def find_short(s)
  arr_strings = s.split
  short_one = arr_strings[0].length
  arr_strings.each do |s|
    if s.length < short_one
      short_one = s.length
    end
  end
  short_one
end

puts find_short("hello how are you good morning")