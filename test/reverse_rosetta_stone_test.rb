gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/reverse_rosetta_stone'
require_relative '../lib/file_reader'

class ReverseRosettaStoneTest < Minitest::Test

  def test_if_reads_braille
    reverse = ReverseRosettaStone.new

    assert_equal "abehkloruvz1258", reverse.inverse_top("0.")
  end
end
