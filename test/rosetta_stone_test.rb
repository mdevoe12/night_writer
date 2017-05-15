gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rosetta_stone'

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

end
