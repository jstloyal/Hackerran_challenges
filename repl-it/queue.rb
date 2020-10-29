
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail 
  
  def add(number)
    if @head.nil?
      @head = Node.new(number)
      @tail = @head
    else
      @tail.next_node = Node.new(number)
      @tail = @tail.next_node
    end
  end
  
  def add_at(index, number)
    if index == 0 
      @head = Node.new(number, @ead)
    else
      get_node(index -1).next_node = Node.new(number, get_node(index))
    end
  end
  
  def remove(index)
    if index == 0
      @head = @head.next_node
    else
      get_node(index -1).next_node = get_node(index).next_node
    end
  end
  
  def pop
    value = @tail.value
    @tail = get_before_tail
    @tail.next_node = nil
    return value
  end
  
  def get(index)
    node = @head
    while index > 0 
    return 'Index out of range' if node.next_node.nil?
      node = node.next_node
      index -= 1
    end
    return node.nil? ? nil : node.value
  end
  
  private
  
  def get_node(index)
    return @head if index == 0 
    node = @head
    while index > 0 
      return 'Index out of range' if node.next_node.nil?
      node = node.next_node
      index -= 1 
    end 
    return node 
  end
  
  def get_before_tail(node = @head)
    return node if @tail == node or @tail == node.next_node
    get_before_tail(node.next_node)
  end
end

class Stack
  def initialize
    @stack = LinkedList.new
  end
  
  def push(number)
    @stack.add(number)
  end
  
  def pop
    @stack.pop
  end
end

class Queue
  def initialize
    @q = LinkedList.new  
  end
  
  def add(number)
    @q.add(number)
  end
  
  def remove
    # your code here
    return -1 if @q.head.nil?
    value = @q.head.value
    @q.remove(0)
    return value
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -11