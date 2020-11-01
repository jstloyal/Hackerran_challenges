def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  event = (max_interval + min_interval) / 2 
  if event ** 2 > number 
    return sqrt_recursive(number, min_interval, event)
  elsif event ** 2 < number
    return sqrt_recursive(number, event, max_interval)
  else
    return event
  end
end

puts sqrt(25)
puts sqrt(7056)