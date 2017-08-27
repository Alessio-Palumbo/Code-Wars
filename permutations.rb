def permsol(string)
  result = []
  perm = []
  string.chars.each { |x| perm.push(x)}
  perm = perm.permutation.to_a.uniq
  perm.each do |x|
    result.push(x.join)
  end
  p result
end


permsol('a'); # ['a']
permsol('ab'); # ['ab', 'ba']
permsol('aabb'); # ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']