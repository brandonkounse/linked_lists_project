# frozen_string_literal: true

# class which will store linked list
class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
  end

  def size
    # returns total number of nodes
  end

  def head
    # returns the first node in the list
    @head
  end

  def tail
    # returns the last node in the list
    @tail
  end

  def at(index)
    # returns node at given index
  end

  def pop
    # removes last element from list
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # format should be: (value) -> (value) -> (value) -> nil
  end
end
