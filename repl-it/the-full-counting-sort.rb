def invert_array(array)
  p array
  new_arr = []
  array.each do |value|
    new_arr.unshift(value)
  end
  p new_arr
end

def counting_sort(array)
  # write your code here
  new_arr = []
  array.length.times do 
    new_arr << 0
  end
  array.each do |value|
    new_arr[value.to_i] += 1
  end
  new_arr
end

def sum_array(arr)
  (1...arr.length).each do |i|
    arr[i] += arr[i - 1]
  end
  arr
end

def sorting(arr, new_arr)
  final_arr = []
  arr.length.times do 
    final_arr << 0
  end
  arr.each do |value|
    final_arr[new_arr[value.to_i] - 1] = value.split(" ")[1]
    new_arr[value.to_i] -= 1
  end
  return final_arr
end

def full_counting_sort(array)
  # write your code here
  array = invert_array(array);
  new_arr = counting_sort(array)
  new_arr = sum_array(new_arr)
  return sorting(array, new_arr)
end

p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]