def fibonacci_numbers(max)
  fib_sequence = [1, 2]
  fib_num = 0
  loop do
    new_sequence = fib_sequence[fib_num] + fib_sequence[fib_num + 1]
    break if new_sequence >= max
    fib_sequence << new_sequence
    fib_num += 1
  end
  fib_sequence
end

def even_fibonacci_sum(some_num)
  fibonacci_numbers(some_num).select(&:even?).sum
end

p even_fibonacci_sum(100)
p even_fibonacci_sum(10)

#++++++++++++++++SECOND SOLUTION++++++++++++++++

#!/bin/ruby
t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    total = 0
    first_fib = 0
    last_fib = 1
    next_fib = 2
    while next_fib < n
        total += next_fib if next_fib.even?
        first_fib = last_fib
        last_fib = next_fib
        next_fib = first_fib + last_fib
    end
    puts total
end
