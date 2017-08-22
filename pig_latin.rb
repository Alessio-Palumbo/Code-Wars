def pig_it text
  result = []
  words = text.split
  words.each do |word|
    if /[A-z]/.match(word)
      a = word[0]
      b = word[1, word.length-1]  
      word = b + a + "ay"
      # result.push(word)
    end
    result.push(word)
  end
  puts result.join(' ')
end


pig_it('Pig latin is cool ?') 