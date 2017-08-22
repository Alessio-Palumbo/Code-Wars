def get_middle(s)
  half = ((s.length - 1) / 2).floor
  if s.length % 2 == 0
    result = s.slice(half..half + 1)
  else
    result = s.slice(half)
  end
  result
end

puts get_middle("test")
puts get_middle("testing")
puts get_middle("middle")
puts get_middle("A")
puts get_middle("of")