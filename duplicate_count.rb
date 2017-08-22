def duplicate_count(text)
  duplicates = []
  text_new = text.downcase.chars.map { |x| x }
  text_new = text_new.sort
  text_new.each_with_index do |char, idx|
    if char == text_new[idx + 1]
      duplicates.push(char)
    end
  end
  puts duplicates.uniq.length  
end

duplicate_count("lahelo")