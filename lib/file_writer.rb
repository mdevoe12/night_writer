require 'pry'

require_relative 'rosetta_stone'

class FileWriter

  def initialize(top = "", middle = "", bottom = "")
    @top = top
    @middle = middle
    @bottom = bottom
    @filename = "braille.txt"
  end

  def writer
    translator = RosettaStone.new
    braille_output = File.open(@filename, 'w')
    braille_output.write(translator.top(@top))
    # braille_output.write(translator.mid)
    # braille_output.write(translator.bottom)
    braille_output.close
  end
end
