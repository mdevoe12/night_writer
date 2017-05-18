gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rosetta_stone'
require_relative '../lib/file_reader'
require_relative '../lib/night_write'

class NightWriteTest < Minitest::Test

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
