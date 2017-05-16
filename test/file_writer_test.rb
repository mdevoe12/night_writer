require 'pry'

gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/file_writer'

class FileWriterTest < Minitest::Test

  def test_if_file_writer_works

    top = "hello world"
    file_writer = FileWriter.new(top)
# binding.pry
    assert_equal "0.0.0.0.0.", file_writer.writer

  end

end
