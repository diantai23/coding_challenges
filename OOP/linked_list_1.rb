class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :top

  def initialize
    @top = nil
  end

  def push(value)
    @top = Node.new(value, @top)
  end

  def pop
    return nil if @top.nil?
    removed_item = @top.value
    @top = @top.next_node
    return removed_item
  end
end

def reverse_list(list)

  reversed_list = nil

  while list
    current_value = list.value
    list = list.next_node
    reversed_list = Node.new(current_value, reversed_list)
  end

  return reversed_list
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
print_values(node3)

# stack = Stack.new
# stack.push(1)
# stack.push(2)

# puts stack.pop
# puts stack.pop
# puts stack.pop

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
