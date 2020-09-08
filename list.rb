# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    new_node = Node.new(number)
    @head = new_node if @head.nil?
    @tail.next_node = new_node unless @tail.nil? 
    @tail = new_node
  end

  def get(index)
    count = 0
    current = @head
    while count < index do
      current = current.next_node
      count += 1
      return nil if current.nil?
    end
    return current.value
  end

  def add_at(index, item)
    
  end
  
  def remove(index)
    
  end
  
  private
  def get_node(index)
    
  end
end



list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5