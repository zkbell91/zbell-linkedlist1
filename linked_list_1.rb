class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    if @data
      first_out = @data.value
      @data = @data.next_node
      return first_out
    else
      nil
    end
  end

  def empty?
    @data.nil?
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

def print_values(list_node)
  if list_node
    puts "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
  temp_stack = Stack.new 
  while list
    temp_stack.push(list.value)
    list = list.next_node
  end 
  reversed_node = head = LinkedListNode.new(temp_stack.pop)
  return nil if reversed_node.nil?
  until temp_stack.empty?
    current_node = LinkedListNode.new(temp_stack.pop)
    reversed_node.next_node = current_node
    reversed_node = current_node
  end
  head
end


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

 


















