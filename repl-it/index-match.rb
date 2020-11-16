def index_match(array)
  max = array.length
  min = 0
  index = (max + min) / 2
  until array[index] == index do
    p index
    return index if array[index] == index
    return -1 if max < min
    if array[index] > index
      max = index - 1
    else
      min = index + 1
    end
    index = (max + min) / 2
  end
  p "Here"
  p index
  return(index)
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0
