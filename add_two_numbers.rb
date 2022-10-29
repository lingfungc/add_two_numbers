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
  l1 = l1.reverse.join.to_i
  l2 = l2.reverse.join.to_i
  sum_l = (l1 + l2).to_s.split('').reverse
end

l1 = [2,4,3]
l2 = [5,6,4]
p add_two_numbers(l1, l2)

l1 = [0]
l2 = [0]
p add_two_numbers(l1, l2)

l1 = [9,9,9,9,9,9,9]
l2 = [9,9,9,9]
p add_two_numbers(l1, l2)
