require 'pry'

require_relative 'rosetta_stone'
require_relative 'file_writer'

class FileWriter

  def writer
    translator = RosettaStone.new
    text = translator.reader
    filename = ARGV[1]
    braille_output = File.open(filename, 'w')
      # braille_output.write(translator.top(text).scan(/.{80}/).join(" " << "\n"))
      # braille_output.write(translator.mid(text).scan(/.{80}/).join(" " << "\n"))
      # braille_output.write(translator.bottom(text).scan(/.{80}/).join(" " << "\n"))
    braille_output.close
  end

  def three_lines
    @top_line = ""
    @middle_line = ""
    @bottom_line = ""
    if input.chars.each_slice(80) do |i|
      @top_line << i
  end
end


night = FileWriter.new
night.writer
