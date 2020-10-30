class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
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
      @head = Node.new(number, @head)
    else
      get_node(index - 1).next_node = Node.new(number, get_node(index))
    end
  end
  
  def remove(index)
    if index == 0
      @head = @head.next_node
    else
      get_node(index - 1).next_node = get_node(index).next_node
    end 
  end
  
  def pop
    value = @head.value
    @head = @head.next_node
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
    @s = LinkedList.new
  end
  
  def push(number)
    @s.add_at(0, number)
  end
  
  def pop
    # p @stack.head
    @s.pop
  end
  
  def empty?
    return true if @s.head.nil? or @s.head.value.nil?
    false
  end
  
  def first
    return @s.head.value
  end
end

def matched(one, two)
  return true if (one == '{' and two == '}') or
                 (one == '[' and two == ']') or
                 (one == '(' and two == ')')
  false
end

def balanced_brackets?(string)
  opened = ['{', '[', '(']
  closed = ['}', ']', ')']
  
  st = Stack.new
  
  string.each_char do |s|
    if st.empty?
      return false if closed.include? s 
      st.push(s)
    elsif opened.include? s 
      st.push(s)
    elsif closed.include? s 
      if matched(st.first, s)
        st.pop
      else
        return false
      end
    end
  end
  
  return st.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true