def duplicates(arr1, arr2)
  # write your code here
  hash = {}
  arr2.each do |v|
    hash[v].nil? ? hash[v] = 1 : hash[v] += 1
  end
  arr1.each do |v|
    hash[v] -= 1
  end
  new_arr = []
  hash.each do |h|
    new_arr << h[0] if h[1] > 0
  end
  new_arr.sort
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]
