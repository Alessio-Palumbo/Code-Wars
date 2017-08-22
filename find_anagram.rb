def find_anagram(word, array)
  result = []
  array.each do |x|
    if word.length == x.length && word.chars.sort == x.chars.sort
      result.push(x)
    end
  end
  puts result
end


find_anagram("abba", ["baba", "abab", "acdv", "poab", "ababb"])