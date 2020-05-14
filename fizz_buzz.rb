num = 0
while num < 100
  num += 1
  if (num % 15).zero?
    puts 'FizzBuzz'
  elsif (num % 5).zero?
    puts 'Buzz'
  elsif (num % 3).zero?
    puts 'Fizz'
  else
    puts num
  end
end
