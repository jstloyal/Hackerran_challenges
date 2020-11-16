def sorting(array, index = 0)
  return array if array[index] > array[index - 1] || index == 0 
  if array[index] < array[index - 1]
    array[index], array[index - 1] = array[index - 1], array[index]
  end
  sorting(array, index - 1)
end

def sort_itself(array)
  # write your code here
  for index in 1..array.size - 1 
    array = sorting(array, index)
    puts array.join(' ')
  end
end
