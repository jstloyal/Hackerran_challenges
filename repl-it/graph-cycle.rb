def graph_cycle?(graph)
  dfs = DFSgraph.new(graph)
  return dfs.cycle
end


class DFSgraph
  attr_reader :visited, :cycle
  
  def initialize(graph)
    @graph = graph
    @visited = []
    @cycle = false
    
    path(0, 0)
  end
  
  def path(value, prev)
    @visited << value
    return unless @graph.include? value
    @graph[value].each do |v|
      @cycle = true if @visited.include? v and v != prev
      path(v, value) unless @visited.include? v
    end
  end
end

puts graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false