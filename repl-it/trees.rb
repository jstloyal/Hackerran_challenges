def leftmost_nodes_sum(array)
  sum = 0 
  index = 0 
  next_index = 0 
  while index < array.length 
    index = (2 ** next_index) - 1 
    sum += array[index].to_i 
    next_index += 1 
  end
  sum 
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11