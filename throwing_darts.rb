def scoreThrows(radiuses)
  if radiuses.empty?
    return 0
  else
    score = 0
    bonus = []
    radiuses.each do |n|
      n.to_f
      if n > 10
        score += 0
      elsif n <= 10 && n >= 5
        score += 5
      else
        bonus.push(n)
        score += 10
      end
    end
    if bonus.length == radiuses.length
      score = 100
    end
  score
  end
end

puts scoreThrows([1, 5, 11])
puts scoreThrows([15, 20, 30])
puts scoreThrows([1, 2, 3, 4])