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
  
  def add_at(index,item)
    if @head.nil? 
      present_nod = Node.new(item)
      @head = present_nod
    end
    if index == 0 
      present_nod = Node.new(item,@head)
      @head = present_nod
    end
    if index > 0
      position = index - 1
      current = @head
      before_current_nod = @head
 
      position.times do
          before_current_nod = current.next_node
      end 

      index.times do
          current = current.next_node
      end 

      present_nod = Node.new(item) 
      after_current_nod = before_current_nod.next_node
      before_current_nod.next_node = present_nod 
      present_nod.next_node = after_current_nod
    end
  end 
  
  def remove(index)
    if @head.nil?
      puts "the storage is empty"
    end
    
    if (index==0) 
      current = @head 
      current.next = new_current 
      @head = new_current
    end
    
    if (index>0)
      current = get_node(index)
      before_current_nod = get_node(index-1) 
      after_current_nod = current.next_node
      before_current_nod.next_node = after_current_nod
    end
    
  end
  
  private

  def get_node(index)
    current = @head
    index.times do
      current = current.next_node
    end
    return current
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