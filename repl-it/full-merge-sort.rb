def merge_sort(array1, array2)
  final_array = []
  while(!array1.empty? && !array2.empty?)
    if array1.first.to_i <= array2.first.to_i
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

def full_merge_sort(array)
  array = intermediate_method(array)
  new_array = []
  array.each do |v|
    new_array.push(v.split(" ").last)
  end
  new_array
end