# frozen_string_literal: true

# class which will store linked list
class LinkedList
  attr_reader :head, :tail

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
      @tail = current.next_node
    end
  end

  def prepend(value)
    prepended = Node.new(value)
    prepended.next_node = @head
    @head = prepended
  end

  def size
    count = 1
    current = @head
    until current.next_node.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  def at(index)
    if index > size
      'index is out of range'
    else
      current = @head
      index.times do
        current = current.next_node
      end
    end
    current
  end

  def pop
    current = @head
    current = current.next_node until current.next_node == @tail
    current.next_node = nil
    @tail = current
  end

  def contains?(value)
    current = @head
    bool = false
    until current.nil?
      bool = true if current.value == value
      current = current.next_node
    end
    bool
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # format should be: (value) -> (value) -> (value) -> nil
  end
end
