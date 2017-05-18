require 'pry'

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/reverse_rosetta_stone'
require_relative '../lib/file_reader'

class ReverseRosettaStoneTest < Minitest::Test

  def test_if_reads_braille
    reverse = ReverseRosettaStone.new
    reverse.inverse_top("0.")

    assert "abehkloruvz1258", "0."
    # assert_equal "a", ".."
    # assert_equal "a", ".."
  end

  # def test_it_can_read_two_chars
  #   reverse = ReverseRosettaStone.new
  #   reverse.inverse_top("0..0")
  #
  #   assert "abehkloruvz1258ijstw#09", "0..0"
  # end
  #
  # def test_it_can_read_two_chars_from_mid
  #   reverse = ReverseRosettaStone.new
  #   reverse.inverse_mid("0..0")
  #
  #   assert "bfilpsv,?269denoyz#45", "0..0"
  # end
  #
  # def test_it_can_read_two_chars_from_bottom
  #   reverse = ReverseRosettaStone.new
  #   reverse.inverse_bottom("0..0")
  #
  #
  #   assert "klmnopqrst!'w.", "0..0"
  # end

  # def test_if_combine_works
  #   reverse = ReverseRosettaStone.new
  #   reverse.inverse_top("0..0")
  #   reverse.inverse_mid("0..0")
  #   reverse.inverse_bottom("0..0")
  #   reverse.combine
  #   binding.pry
  #   expected = "abehkloruvz1258ijstw#09bfilpsv,?269denoyz#45klmnopqrst!'w."
  #
  #   assert expected
  # end


end
