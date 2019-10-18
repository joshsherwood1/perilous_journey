require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_that_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_that_it_has_nil_head
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_it_can_append
    list = LinkedList.new
    list.append("West")

    assert_equal "West", list.head.surname
  end

  def test_that_next_node_is_nil
    list = LinkedList.new
    list.append("West")
    assert_equal nil, list.head.next_node
  end

  def test_that_list_count_is_one
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_that_it_can_print_data
    list = LinkedList.new
    list.append("West")
    assert_equal "The West Family", list.to_string
  end

  def test_that_append_can_also_add_to_next_node
    list = LinkedList.new
    list.append("West")
    list.append("Hardy")
    assert_instance_of Node, list.head.next_node
    assert_equal "Hardy", list.head.next_node.surname
    assert_equal 2, list.count
    assert_equal "The West Family , followed by the Hardy Family", list.to_string
    list.append("Smith")
    assert_equal 3, list.count
    assert_equal "The West Family , followed by the Hardy Family , followed by the Smith Family", list.to_string
  end
end
