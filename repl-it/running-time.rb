def sorting(arr, operations, ind = 0)
  return operations if arr[ind] > arr[ind - 1] || ind == 0
  if arr[ind] < arr[ind - 1]
    arr[ind], arr[ind - 1] = arr[ind - 1], arr[ind]
    operations += 1
  end
  sorting(arr, operations, ind - 1)  
end

def running_time(arr)
  operations = 0;
  for index in 1..arr.size - 1    
     operations = sorting(arr, operations, index)  
  end  
  operations
end

puts running_time([2, 1, 3, 1, 2])
# => 4