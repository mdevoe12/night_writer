require 'pry'

require_relative 'rosetta_stone'


class FileReader

  def reader
  filename = ARGV[0]
  File.read(filename)
  end
end
