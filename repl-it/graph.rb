def graph(hash_graph)
  array = [0]
  while array.last != 4 do
    array << hash_graph[array.last][0]
  end
  array
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]