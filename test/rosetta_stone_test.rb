gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rosetta_stone'
require_relative '../lib/file_writer'

class RosettaStoneTest < Minitest::Test

  def test_if_top_works
    rosettastone = RosettaStone.new

    assert_equal "..", rosettastone.top(",")
    assert_equal "......", rosettastone.top(",?!")
    assert_equal "0.00.0..", rosettastone.top("kgt!")
  end

  def test_if_mid_works
    rosettastone = RosettaStone.new

    assert_equal "0.", rosettastone.mid("b")
    assert_equal "0.00", rosettastone.mid("bg")
    assert_equal "0.00.0", rosettastone.mid("bgd")
    assert_equal "0.00.0..", rosettastone.mid("bgda")
  end

  def test_if_bottom_works
    rosettastone = RosettaStone.new

    assert_equal "0.00.0..", rosettastone.bottom("mywg")
  end

  def test_if_incoming_test_works
    rosettastone = RosettaStone.new

    assert_equal "hello world", rosettastone.reader
  end

  def test_if_read_helloworld_top
    rosettastone = RosettaStone.new
    text = rosettastone.reader

    assert_equal "0.0.0.0.0......00.0.0.00", rosettastone.top(text)
  end

  def test_if_read_helloworld_mid
    rosettastone = RosettaStone.new
    text = rosettastone.reader

    assert_equal "0.0.0.0.0......00.0.0.00", rosettastone.mid(text)
  end
  #
  # def test_if_read_helloworld_bottom
  #   rosettastone = RosettaStone.new
  #   text = rosettastone.reader.read
  #
  #   assert_equal "....0.0.0..00.0.0...", rosettastone.bottom(text)
  # end
  #
  # def test_if_read_helloworld_all
  #   rosettastone = RosettaStone.new
  #   text = rosettastone.reader.read
  #
  #   assert_equal "0.0.0.0.0..00.0.0.00", rosettastone.top(text)
  #   assert_equal "00.00.0..000.0000..0", rosettastone.mid(text)
  #   assert_equal "....0.0.0..00.0.0...", rosettastone.bottom(text)
  # end




end
