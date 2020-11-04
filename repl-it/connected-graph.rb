def connected_graph?(graph)
  # write your code here
  dfs = DFSgraph.new(graph)
  return dfs.visited.length == graph.length
end

class DFSgraph
  attr_reader :visited
  
  def initialize(graph)
    @graph = graph
    @visited = []
    
    path(0)
  end
  
  def path(value)
    @visited << value
    @graph[value].each do |v|
      path(v) unless @visited.include? v
    end
  end
end


puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true