def appears_most_times(array)
  # write your code here
  dict = {}
  array.each do |value|
    dict[value] = dict[value].nil? ? 1 : dict[value] + 1
  end
  maxx = [0, 0]
  dict.each do |d|
    maxx = d if d[1] > maxx[1]
  end
  return maxx[0]
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376