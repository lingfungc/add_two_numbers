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
  carry = false

  while !l1.nil? || !l2.nil? || carry
    sum = 0
    val1 = l1.nil? ? 0 : l1.val
    val2 = l2.nil? ? 0 : l2.val
    sum = carry ? val1 + val2 + 1 : val1 + val2
    carry = sum > 9 ? true : false

    l1 = l1.next
    l2 = l2.next

    current.val = sum
    current.next = ListNode.new
  end

  result
end
