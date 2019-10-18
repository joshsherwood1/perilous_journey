class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    elsif @head.next_node == nil
      @head.next_node = Node.new(data)
    else head.next_node != nil
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    array = []
    if @head == nil
      0
    elsif @head != nil && @head.next_node == nil
      1
    else
      current_node = @head
      array << @head.surname
      while current_node.next_node != nil
        current_node = current_node.next_node
        array << current_node.surname
      end
      array.count
    end

  end

  def to_string
    array = []
    if @head.next_node == nil
      array << @head.surname
    else
      array << @head.surname
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        array << current_node.surname
      end
    end
    array.first
    array.first.prepend("The ")
    array.first << " Family"
    array.drop(1).each do |name|
      name.prepend(", followed by the ")
      name << " Family"
    end
    array.join(' ')
  end
end
