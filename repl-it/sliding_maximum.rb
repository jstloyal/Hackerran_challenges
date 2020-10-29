def sliding_maximum(k, array)
  # your code here
  arr = []
  (0..(array.length - k)).each do |i|
    arr << array[i, k].max 
  end
  return arr 
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
