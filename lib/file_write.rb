class FileWriter
  def braille(top, mid, bottom)
    writer = File.open(ARGV[1], "w")
    @text.length.times do |val|
      writer.write(top[val] << "\n")
      writer.write(mid[val] << "\n")
      writer.write(bottom[val] << "\n")
    end
    writer.close
  end
end

#puts "Created '#{ARGV[1]}', containing #{text_length} characters."
