# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end


class Queue
  def initialize
    @head = nil
    @tail = nil
    length = 0
  end
  def add(number)
    # your code here
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    
    @tail = new_node
    length += 1
  end
  
  def remove
    # your code here
    return nil unless length > 0 
    @head = @head.next_node
    @tail = nil if length == 1 
    length -= 1 
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
# => -1