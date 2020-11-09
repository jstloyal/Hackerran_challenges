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

def number_of_primes(arr)
  # write your code here
  set = Sett.new
  num = 0
  arr.each do |a|
    num += 1 if set.sety.include? a
  end
  num
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3