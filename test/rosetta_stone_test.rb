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
# =======
# class RosettaTest < Minitest::Test
#   # def test_if_all_three_work_together
#   #   nite = Rosetta.new
#   #   top = "0."
#   #   mid = "00"
#   #   bottom = ".."
#   #   assert_equal top, all_three("h")
#   #   assert_equal mid, all_three("h")
#   #   assert_equal bottom, all_three("h")
#   # end
#
#   # def test_if_class_nightwriter_created
#   #   nightwriter = NightWriter.new
#   # end
#   #
#   # def test_it_can_topfirst_one_letter
#   #   nightwriter = NightWriter.new
#   #   assert_equal "0.", nightwriter.top_first("a")
#   # end
#   #
#   # def test_it_can_topfirst_two_chars
#   #   nightwriter = NightWriter.new
#   #   assert_equal "0.0.", nightwriter.top_first("ab")
#   # end
#   #
#   # def test_it_can_topfirst_multiple
#   #   nightwriter = NightWriter.new
#   #   assert_equal "0.0.0.", nightwriter.top_first("abe")
#   # end
#   #
#   # def test_it_can_topsecond
#   #   nightwriter = NightWriter.new
#   #   assert_equal "00", nightwriter.top_second("c")
#   #   assert_equal "0000", nightwriter.top_second("cq")
#   # end
#   #
#   # def test_it_can_topthird
#   #   nightwriter = NightWriter.new
#   #   assert_equal ".0", nightwriter.top_third("i")
#   #   assert_equal ".0.0.0", nightwriter.top_third("ijt")
#   # end
#   def test_can_it_count_chars
#     nightwriter = Rosetta.new
#     input = "a"
#     assert_equal 1, nightwriter.count(input)
#     input = "he"
#     assert_equal 2, nightwriter.count(input)
#     input = "hello"
#     assert_equal 5, nightwriter.count(input)
#   end
#
#   def test_it_can_topfourth
#     nightwriter = Rosetta.new
#     assert_equal "..", nightwriter.top(",")
#     assert_equal "......", nightwriter.top(",?!")
#     assert_equal "0.00.0..", nightwriter.top("kgt!")
#   end
#
#   def test_if_mid_works
#     nightwriter = Rosetta.new
#     assert_equal "0.00.0..", nightwriter.mid("bgda")
#   end
#
#   def test_if_bottom_works
#     nightwriter = Rosetta.new
#     assert_equal "0.00.0..", nightwriter.bottom("mywg")
# >>>>>>> 6be6270dcedf920a48436019236f4761ba213ab5
#   end
#
# end
