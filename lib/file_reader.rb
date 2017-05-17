require 'pry'

require_relative 'rosetta_stone'

class FileReader

  def reader
  filename = ARGV[0]
  reader = File.open(filename, "r")
  reader.read
  end
end
