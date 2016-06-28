class TreeNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
end

#prints the expression
def print_infix(node) ##node == head in this scenario
  return if node == nil
  print_infix(node.left)
  print node.value + " "
  print_infix(node.right)
end

def operators(node) ##node == head in this scenario
  return if node == nil
  operators(node.left)
  print node.value + " " if node.value == "+" || node.value == "-" || node.value == "*" || node.value == "/" || node.value == "%"
  operators(node.right)
end
# test 1: 3+2 => +
# test 2: 2*3/1-4 => */-
# test 3: 1-4-2-1 => ---

def leaf_count(node)
  # start at the head of the tree
  # recursively iterate through tree
  # add +1 to count IF current node node.left & node.right = nil
  # after iterating through tree, return count
end
# test 1: 3+2 => 2
# test 2: 4*3+2 => 3
# test 3: 3+2-10 => 3

def print_prefix(node)
  return if node == nil
  print node.value + " " #evaluate middle first
  print_infix(node.left) #then left
  print_infix(node.right) #then right
end
# test 1: 3+2 => +32
# test 2: 3+2-10 > (3+2)-10 > (+32)-10 => -+3210
# test 3: 4*3+2 > (4*3)+2 > (*43)+2 => +*432

def print_postfix(node)
  return if node == nil
  print_infix(node.left) #evaluate left first
  print_infix(node.right) #then right
  print node.value + " " #then middle
end
# test 1: 3+2 => 32+
# test 2: 3+2-10 > (3+2)-10 > (32+)-10 => 32+10-
# test 3: 4*3+2 > (4*3)+2 > (43*)+2 => 43*2+

def operator_check(node,operator)
  #iterate through tree
  #if node == operator, return true
  #if the tree is iterated through and the operator is not found, return false
end
# test 1: (3+2,+) => true
# test 2: (3+2,*) => false
# test 3: (1+1+1+1,+) => true

# EXAMPLE BELOW
# 4*3+2-10%5
#   root = TreeNode.new("-")
#   root.left = TreeNode.new("+")
#   root.left.left = TreeNode.new("*")
#   root.left.left.left = TreeNode.new("4")
#   root.left.left.right = TreeNode.new("3")
#   root.left.right = TreeNode.new("2")
#   root.right = TreeNode.new("%")
#   root.right.left = TreeNode.new("10")
#   root.right.right = TreeNode.new("5")
