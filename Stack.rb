# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @head = nil
    # @tail = nil
  end
  
  def push(number)
    # your code here
    @head = Node.new(number, @head)
  end
  alias_method :"<<", :push
  
  def pop
    # your code here
    return "Stack is empty!" if @head.nil?
    new_num = @head.value
    @head = @head.next_node
    new_num
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3