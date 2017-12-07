require 'pry'
require "./lib/jungle_beat"
require 'minitest/autorun'
require 'minitest/pride'

class JungleBeatTest < Minitest::Test

  def test_junglebeat
    jb = JungleBeat.new

    assert_nil jb.list.head
  end

  def test_jb_append_deep_doo_ditt
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    assert_equal "deep doo ditt", jb.list.to_string
end

  def test_jb_list_head_data
    jb = JungleBeat.new
    jb.append('deep')
    assert_equal 'deep', jb.list.head.data
  end

  def test_jb_list_head_next_node_data
    jb = JungleBeat.new
    jb.append('deep')
    jb.append('doo')
    jb.append('ditt')

    assert_equal 'doo', jb.list.head.next_node.data
  end

  def test_jb_append_woo_hoo_shu
    jb = JungleBeat.new
    jb.append('woo hoo shu')


    assert_equal 'woo hoo shu', jb.list.to_string
    assert_equal 3, jb.list.count
  end

  def jb_count
    jb = JungleBeat.new
    jb.append('deep')
    jb.append('doo')
    jb.append('dit')
    jb.append('woo')
    jb.append('hoo')
    jb.append('shu')

    assert_equal 6, jb.count
  end
end
