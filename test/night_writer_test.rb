gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/nite_write'
require './lib/rosetta_stone'

class NiteWriteTest < Minitest::Test
  def test_it_can_topfourth
    nightwriter = NiteWriter.new
    assert_equal "..", nightwriter.top(",")
    assert_equal "......", nightwriter.top(",?!")
    assert_equal "0.0.0.0.0.0.", nightwriter.top("hello!")
  end

  def test_if_mid_works
    nightwriter = NiteWriter.new
    assert_equal "0.00.0..", nightwriter.mid("bgda")
  end

  def test_if_bottom_works
    nightwriter = NiteWriter.new
    assert_equal "0.00.0..", nightwriter.bottom("mywg")
  end

end
