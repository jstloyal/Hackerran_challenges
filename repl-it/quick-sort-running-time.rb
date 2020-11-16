def insertion_sort(array, i = 0, count)
  return [array, count] if array[i] > array[i - 1] || i == 0
  if array[i] < array[i - 1]
    array[i], array[i - 1] = array[i - 1], array[i]
    count += 1
  end
  insertion_sort(array, i - 1, count)  
end

def simple_counting_sort(array)
  result= [array, 0]
  for i in 1..(array.size - 1)    
     result = insertion_sort(result[0], i, result[1])
  end
  # write your code here
  return result[1]
end

def sorting(array, start=0, last=array.size-1, times=0)
  return times if last-start < 1
  pivot = array[last]
  middle = start - 1

  for i in start..last
   array[i] <= pivot ? (times += 1; middle += 1; array[i], array[middle] = array[middle], array[i] ) : array[i]
  end

  # puts array.join(" ")
  times = sorting(array, start, middle-1, times)
  sorting(array, middle+1, last, times)
end

def quicksort_running_time(array)
  array1 = array.dup
  array2 = array.dup
  count1 = simple_counting_sort(array1)
  p count1
  count2 = sorting(array2)
  p count2
  return count1 - count2
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
