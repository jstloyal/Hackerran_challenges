require 'set'

def find_duplicates(array)
  sety = Set.new 
  arr = []
  array.each do |value|
    arr << value if Set[value] <= sety
    sety << value
  end
  arr
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]
