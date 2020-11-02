class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def initialize
    @root = nil
  end
  
  def insert(e, node=@root)
    return @root = Node.new(e) if @root.nil?
    return Node.new(e) if node.nil?
    return node if node.data == e
    
    if e < node.data
      if node.left.nil?
        node.left = insert(e, node.left)
      else
        insert(e, node.left)
      end
    elsif node.right.nil?
      node.right = insert(e, node.right)
    else
      insert(e, node.right)
    end
  end

  def pre_order(node = @root)
    array = pre_order_helper(node, [])
    string = ""
    array.each do |i|
      string << "#{i} "
    end
    return string
  end
  
  def pre_order_helper(node, array)
    array << node.data
    pre_order_helper(node.left, array) unless node.left.nil?
    pre_order_helper(node.right, array) unless node.right.nil?
    return array
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(e) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"