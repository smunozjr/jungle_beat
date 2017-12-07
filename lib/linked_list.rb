require 'pry'
require "./lib/node"

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head == nil
       @head = Node.new(data)
       @count = 1
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
        current_node.next_node = Node.new(data)
        @count += 1
    end
      data
  end

  def to_string
    result = ''
    current_node = @head
    until current_node.next_node == nil
      result.concat(current_node.data + ' ')
      current_node = current_node.next_node
    end
    result.concat(current_node.data)
  end

  def prepend(data)
    duplicate_node = @head
    new_node = Node.new(data)
    @head = new_node
    new_node.next_node = duplicate_node
  end

  def insert(position, data)
     current_node = @head
     (position - 1).times do
     current_node = current_node.next_node
   end
     new_node = Node.new(data)
     new_next_node = current_node.next_node
     current_node.next_node = new_node
     new_node.next_node = new_next_node
  end

  def includes?(data)
    result = []
    current_node = @head
    until current_node.next_node == nil
      result << current_node.data
      current_node = current_node.next_node
    end
    result << current_node.data
    result.include?(data)
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end

      data = current_node.next_node.data

      current_node.next_node = nil
      @count -= 1
      data
  end

  def find(position, quantity)
    current_node = @head
    counter = 0
    until counter == position
      current_node = current_node.next_node
      counter += 1
    end
     quantity.times do
       result = ''
       result.concat(' ' + current_node.data)
     end

  end


end
