class Node
  attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i]) unless array[i] == 0
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

# helper function
def height(node, h = 1, maxh = 0)
  return 0 if node.nil?
  maxh = height(node.left, h + 1, maxh) unless node.left.nil?
  maxh = height(node.right, h + 1, maxh) unless node.right.nil?
  maxh = h if node.left.nil? and node.right.nil? and h > maxh
  
  maxh
end

def balanced_helper(node = root)
  return true if node.nil?
  return false if (height(node.left) - height(node.right)).abs > 1
  return false unless balanced_helper(node.left)
  return false unless balanced_helper(node.right)
  
  true
end

def balanced_tree?(array)
  root = array_to_tree(array)
  balanced_helper(root)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true