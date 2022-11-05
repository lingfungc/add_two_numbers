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

  current = ListNode.new()
  result = current
  carry = false

  while l1 || l2 || carry
    sum = 0
    val1 = l1.nil? ? 0 : l1.val
    val2 = l2.nil? ? 0 : l2.val
    sum = carry ? val1 + val2 + 1 : val1 + val2

    current.val = sum
    current.next = current
  end

  result
end
