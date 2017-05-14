handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

text_length = incoming_text.length

writer = File.open(ARGV[1], "w")

writer.write(incoming_text * 3)

writer.close

puts "Created '#{ARGV[1]}', containing #{text_length} characters."
