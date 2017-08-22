def  first_non_repeating_letter(s) 
  str = ""
  count = 0
  s.chars.each do |letter|
    count = s.downcase.chars.count(letter.downcase)
    if count == 1
      return letter
    end
  end 
  str   
end

puts first_non_repeating_letter("testo")
