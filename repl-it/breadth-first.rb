def bfs(graph)
  array = [0]
  while !graph.empty?
    array.each do |element|
      if graph.include? element
        graph[element].each do |g|
          array << g if graph.include? g and !array.include? g
        end
        graph.delete(element)
      end
    end
  end
  return array
end


p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]