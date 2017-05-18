require './lib/file_writer'
require './lib/rosetta_stone'
require './lib/file_reader'

class NightWriter
  attr_accessor :writer

  def initialize
    @writer = FileWriter.new
  end

end

# nite = NightWriter.new
# nite.writer
