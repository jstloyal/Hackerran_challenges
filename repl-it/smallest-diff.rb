def smallest_difference(array)
  # write your code here
  new_arr = array.sort
  min = [new_arr[0], new_arr[1]]
  for i in (2...new_arr.length)
    min = [new_arr[i - 1], new_arr[i]] if new_arr[i] - new_arr[i - 1] < min.last - min.first
  end
  return min
end

p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]