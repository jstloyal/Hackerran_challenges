class Node
  attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def checking_left(node, value)
  return false if node.data > value
  unless node.left.nil?
    return false unless checking_left(node.left, value)
  end
  unless node.right.nil?
    return false unless checking_left(node.right, value)
  end
  return true
end

def checking_right(node, value)
  return false if node.data < value
  unless node.left.nil?
    return false unless checking_right(node.left, value)
  end
  unless node.right.nil?
    return false unless checking_right(node.right, value)
  end
  return true
end

def checking(node, value)
  unless node.left.nil?
    return false unless checking_left(node.left, value) && checking(node.left, node.left.data)
  end
  
  unless node.right.nil?
    return false unless checking_right(node.right, value) && checking(node.right, node.right.data)
  end
  true
end

def search_tree?(array)
  root = array_to_tree(array)
  checking(root, root.data)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false