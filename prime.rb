# Is a number prime?

def isPrime(num)
  if num < 2
    return false
  else
    (2..(num-1)).each do |n|
      if num % n == 0
        return false
      end
    end
   end
   true
end

puts isPrime(13)
puts isPrime(8)