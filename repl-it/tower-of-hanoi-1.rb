def move(starting, goal)
  # your code here
  spare = get_spare(starting, goal)
  return "#{starting}->#{spare} #{starting}->#{goal} #{spare}->#{goal} "
end

def get_spare(s, g)
  return 1 if s + g == 5
  return 2 if s + g == 4
  return 3 if s + g == 3
end


puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
