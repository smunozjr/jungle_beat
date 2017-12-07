require 'pry'
require "./lib/linked_list"
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest < Minitest::Test

  def test_list_head_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_list_append
    list = LinkedList.new

    assert_equal 'doop', list.append('doop')
  end

  def test_list_head_next_node
    list = LinkedList.new
    list.append('doop')

    assert_nil list.head.next_node
  end

  def test_list_count
    list = LinkedList.new

    assert_equal 0, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append('doop')
    assert_equal 'doop', list.to_string
  end

  def test_append_deep
    list = LinkedList.new

    assert_equal 'deep', list.append('deep')
  end

  def test_list_can_count_multiple_nodes
    list = LinkedList.new
    list.append('deep')
    list.append('doop')
    assert_equal 2, list.count
  end

  def test_to_string_2
   list = LinkedList.new
   list.append('doop')
   list.append('deep')

   assert_equal 'doop deep', list.to_string
  end

  def test_list_append_plop
    list = LinkedList.new

    assert_equal 'plop', list.append('plop')
  end

  def test_list_to_string
    list = LinkedList.new
    list.append('plop')
    assert_equal 'plop', list.to_string
  end

  def test_list_append_suu
    list = LinkedList.new

    assert_equal 'suu', list.append('suu')
  end

  def test_list_prepend_dop
    list = LinkedList.new
    list.prepend('dop')
    assert_equal 'dop', list.head.data
    assert_nil nil, list.head
  end

  def test_list_to_string_dop_plop_suu
    list = LinkedList.new
    list.append('dop')
    list.append('plop')
    list.append('suu')

    assert_equal 'dop plop suu', list.to_string
  end

  def test_list_count_3
    list = LinkedList.new
    list.append('dop')
    list.append('plop')
    list.append('suu')

    assert_equal 3, list.count
  end

  def test_insert_woo
    list = LinkedList.new
    list.append('dop')
    list.append('plop')
    list.append('suu')
    list.insert(1,'woo')

    assert_equal 'dop woo plop suu', list.to_string
  end

  def test_to_string_deep_woo_shi_shu_blop
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    assert_equal 'deep woo shi shu blop', list.to_string

  end

  def test_includes?
    list = LinkedList.new
    list.append('dop')
    list.append('plop')
    list.append('deep')


    assert list.includes?('deep')
    refute list.includes?('dep')
  end

  def test_find_shi
    
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    assert_equal "shi", list.find(2,1)
  end

  def test_find_woo_shi_shu

    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_pop_blop_shu
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    assert_equal 'blop', list.pop
    assert_equal 'shu', list.pop
    assert_equal 'deep woo shi' , list.to_string
  end



end
