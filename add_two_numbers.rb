# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
  # Return ListNode if the cases of either l1, l2 is nil or both of them are nil
  return nil if l1.nil? && l2.nil?
  return l1 if l2.nil?
  return l2 if l1.nil?

  # Create a new ListNode for calculation
  current = ListNode.new
  # We use current for calculation and return result at the end because they will be the same instance
  result = current
  # No carry at the begining
  carry = 0

  # Run calculation when any of the l1.val, l2.val and carry exist
  while !l1.nil? || !l2.nil? || carry == 1
    sum = 0
    val1 = l1.nil? ? 0 : l1.val
    val2 = l2.nil? ? 0 : l2.val
    sum = val1 + val2 + carry
    carry = sum / 10
    sum = sum % 10

    # Update current.val to sum
    # p current
    # p result
    # We base on current.next to execute the ListNode.new(sum) iteration
    current.next = ListNode.new(sum)
    current = current.next
    # p current
    # p result

    # Check if l1 and l2 is already nil or not, to avoid no method error on l1.next when l1 is nil
    l1 = l1.nil? ? nil : l1.next
    l2 = l2.nil? ? nil : l2.next
  end

  # p result
  # result.next is to ignore the first val (which is 0) when we created current = ListNode.new
  result.next
end

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

# Input: l1 = [7], l2 = [8]
# Output: [5,1]

l1 = ListNode.new(7)
l2 = ListNode.new(8)

add_two_numbers(l1, l2)

# <ListNode:0x000000010509d5e8 @val=0, @next=nil>
# <ListNode:0x000000010509d5e8 @val=0, @next=nil>
# <ListNode:0x000000010509cda0 @val=5, @next=nil>
# <ListNode:0x000000010509d5e8 @val=0, @next=#<ListNode:0x000000010509cda0 @val=5, @next=nil>>

# <ListNode:0x000000010509cda0 @val=5, @next=nil>
# <ListNode:0x000000010509d5e8 @val=0, @next=#<ListNode:0x000000010509cda0 @val=5, @next=nil>>
# <ListNode:0x000000010509c008 @val=1, @next=nil>
# <ListNode:0x000000010509d5e8 @val=0, @next=#<ListNode:0x000000010509cda0 @val=5, @next=#<ListNode:0x000000010509c008 @val=1, @next=nil>>>

# <ListNode:0x000000010509d5e8 @val=0, @next=#<ListNode:0x000000010509cda0 @val=5, @next=#<ListNode:0x000000010509c008 @val=1, @next=nil>>>
# <ListNode:0x000000010509cda0 @val=5, @next=#<ListNode:0x000000010509c008 @val=1, @next=nil>>
