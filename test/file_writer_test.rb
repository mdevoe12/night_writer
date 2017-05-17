require 'pry'

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/file_writer'

class FileWriterTest < Minitest::Test

  def test_if_file_writer_works

    top = "hello world"
    middle = "hello world"
    bottom = "hello world"
    file_writer = FileWriter.new(top)
    file_writer1 = FileWriter.new(middle)
    file_writer2 = FileWriter.new(bottom)
# binding.pry
    assert_equal "0.0.0.0.0.", file_writer.writer
    assert_equal "0.0.0.", file_writer1.writer
    assert_equal "0.", file_writer2.writer

  end

end
