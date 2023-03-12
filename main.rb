# frozen_string_literal: true

require './linked_list'
require './node'

list = LinkedList.new
list.append(42)
list.append('hello')
list.append(:halloween)
list.prepend(:star)
p list.size
p list.at(2)
p list.head.next_node.value
p list.contains?(42)
p list.find('hello')
p list.to_s
