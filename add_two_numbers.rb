# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
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

    # Check if l1 and l2 is already nil or not
    l1 = l1.nil? ? nil : l1.next
    l2 = l2.nil? ? nil : l2.next

    # Update current.val to sum
    current.val = sum
    # Check if current is the last node or not
    current.next = l1.nil? && l2.nil? ? nil : ListNode.new
  end

  result
end

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

# Input: l1 = [7], l2 = [8]
# Output: [5,1]
