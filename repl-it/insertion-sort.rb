def insertion_sort(array)
  # write your code here
  number = array.length - 1
  while number >= 1 do
    (0...number).each do |i|
      actual = array[i]
      nexty = array[i + 1]
      if actual > nexty
        array[i + 1] = actual
        (0...array.length).each do |a|
          a == array.length - 1 ? (print "#{array[a]}\n") : (print "#{array[a]} ")
        end
        array[i] = nexty
        # p array
      end
    end
    number = number - 1
  end
  (0...array.length).each do |a|
    a == array.length - 1 ? (print "#{array[a]}\n") : (print "#{array[a]} ")
  end
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9