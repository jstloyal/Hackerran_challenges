
def simple_quicksort(arr)
  pi = arr.first
  arr1 = []
  arr2 = []
  (1...arr.length).each do |i|
    arr[i] > pi ? arr2 << arr[i] : arr1 << arr[i]
  end
  arr1 = simple_quicksort(arr1) unless arr1.length <= 1
  arr2 = simple_quicksort(arr2) unless arr2.length <= 1
  arr1 << pi
  arr1.concat(arr2)
  puts arr1.join(" ")
  return arr1
end