require 'set'

class Sett
  attr_accessor :sety
  
  def initialize
    @sety = Set[2, 3, 5, 7]
    (11..10000).each do |v|
      @sety.add(v) if check_prime(v)
    end
  end
  
  def check_prime(value)
    (2..Math.sqrt(value).to_i).each do |d|
      return false if value % d == 0
    end
    true
  end
end

def n_factor(arr, value)
  factors = 0 
  arr.each do |v|
    factors += 1 if (v > value && v % value == 0)
  end
  factors
end

def prime_prime(array)
  # write your code here
  set = Sett.new
  max = 0
  prime = 0
  set.sety.each do |v|
    if n_factor(array, v) > max
      max = n_factor(array, v)
      prime = v
    end
  end
  return prime
end

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7
