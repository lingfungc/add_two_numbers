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
  p l1 = l1.reverse.join.to_i
  p l2 = l2.reverse.join.to_i
  p sum_l = (l1 + l2).to_s.split('')
end

l1 = [2,4,3]
l2 = [5,6,4]
add_two_numbers(l1, l2)
