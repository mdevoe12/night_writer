gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rosetta_stone'
require_relative '../lib/file_reader'

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

  def test_can_it_translate_caps
    rosettastone = RosettaStone.new

    assert_equal "..0.", rosettastone.top("A")
    assert_equal "....", rosettastone.mid("A")
    assert_equal "..00", rosettastone.bottom("W")
  end

  def test_if_read_helloworld_top
    rosettastone = RosettaStone.new
    text = "hello world"

    assert_equal "0.0.0.0.0....00.0.0.00", rosettastone.top(text)
  end

  def test_can_it_slice_to_array_81_chars
    rosettastone = RosettaStone.new
    actual       = rosettastone.slice_eighty("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0")
    expected     = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", "0"]

    assert_equal expected, actual
  end

  def test_slice_lines_top
    rosettastone = RosettaStone.new
    actual       = rosettastone.slice_top("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0")
    expected     = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", "0"]

    assert_equal expected, actual
  end

  def test_slice_lines_mid
    rosettastone = RosettaStone.new
    actual = rosettastone.slice_mid("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0")
    expected = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", "0"]

    assert_equal expected, actual
  end

  def test_slice_bottom
    rosettastone = RosettaStone.new
    actual = rosettastone.slice_bottom("0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0")
    expected = ["0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", "0"]

    assert_equal expected, actual
  end

  def test_all_three_lines
    text = "hello"

    rosettastone = RosettaStone.new
    text_top = rosettastone.top(text)
    text_mid = rosettastone.mid(text)
    text_bottom = rosettastone.bottom(text)

    top_line = rosettastone.slice_top(text_top)
    mid_line = rosettastone.slice_top(text_mid)
    bottom_line = rosettastone.slice_top(text_bottom)


    assert_equal ["0.0.0.0.0."], top_line
    assert_equal ["00.00.0..0"], mid_line
    assert_equal ["....0.0.0."], bottom_line
    end

end
