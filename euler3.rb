def prime_factors(n)
 
  return [] if n == 1
# return an empy array if n is 1 

  factor = (2..n).find {|x| n % x == 0}
# set factor to the first number in the range 2..n that has a remainter of
#0 when divided by x which 

  [factor] + prime_factors(n / factor)
end
puts prime_factors(600851475143).max