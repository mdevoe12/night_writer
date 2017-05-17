require 'pry'

require_relative 'rosetta_stone'
require_relative 'file_writer'

class FileWriter

  def writer
    translator = RosettaStone.new
    text = translator.reader
    filename = ARGV[1]
    braille_output = File.open(filename, 'w')

      braille_output.write(translator.top(text) << "\n")
      # braille_output.write(translator.top_line.scan(/.{1,80}/).join(" " << "\n"))
      braille_output.write(translator.mid(text)<< "\n")
      # braille_output.write(translator.middle_line.scan(/.{1,80}/).join(" " << "\n"))
      braille_output.write(translator.bottom(text)<< "\n")
      # braille_output.write(translator.bottom_line.scan(/.{1,80}/).join(" " << "\n"))
    braille_output.close
  end

end


night = FileWriter.new
night.writer
