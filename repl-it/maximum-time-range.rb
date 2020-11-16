def merge_sort(array1, array2)
  final_array = []
  while(!array1.empty? && !array2.empty?)
    if array1.first[0] <= array2.first[0]
      final_array.push(array1.shift)
    else
      final_array.push(array2.shift)
    end
    final_array.concat(array2) if array1.empty?
    final_array.concat(array1) if array2.empty?
  end
  final_array
end

def intermediate_method(array)
  if array.length > 1
    array1 = intermediate_method(array[0...array.length/2])
    array2 = intermediate_method(array[array.length/2..-1])
    array = merge_sort(array1, array2)
  end
  array
end

def get_events_array(array)
  new_array = []
  until array.empty?
    new_array.push([array[0], array[1]])
    array.shift
    array.shift
  end
  return new_array
end

def maximum_time_range(array)
  # write your code here
  new_array = get_events_array(array)
  new_array = intermediate_method(new_array)
  last_array = [new_array[0]]
  for i in 1...new_array.length
    if new_array[i][0] <= last_array.last[1] and
       new_array[i][1] > last_array.last[1]
      last_array.last[1] = new_array[i][1]
    elsif new_array[i][1] > last_array.last[1]
      last_array << new_array[i]
    end
  end
  last_array.length == 1 ? last_array.first : last_array
end
