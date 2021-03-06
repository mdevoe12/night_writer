require_relative 'rosetta_stone'

class NightWrite

  def writer
    translator = RosettaStone.new

    text        = translator.reader
    text_length = text.length
    top_text    = translator.top(text)
    mid_text    = translator.mid(text)
    bottom_text = translator.bottom(text)

    braille_to_write = []
    braille_to_write << translator.slice_top(top_text)
    braille_to_write << translator.slice_mid(mid_text)
    braille_to_write << translator.slice_bottom(bottom_text)

    filename = ARGV[1]
    braille_output = File.open(filename, 'w')
    braille_to_write[0].each_index do |i|
      braille_output.write(braille_to_write[0][i] << "\n")
      braille_output.write(braille_to_write[1][i] << "\n")
      braille_output.write(braille_to_write[2][i] << "\n")
    end

    braille_output.close
    puts "Created #{ARGV[1]} with #{text_length} braille characters."
  end  
end

night_write = NightWrite.new
night_write.writer
