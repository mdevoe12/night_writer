require_relative 'rosetta_stone'

class NightWriter

  handle = File.open(ARGV[0], "r")

  incoming_text = "Hello World"
  # incoming_text = handle.read

end
#
#   handle.close
#
# #  text_length = incoming_text.length
#
#   writer = File.open(ARGV[1], "w")
#
#   writer.write(@output_first)
#
#   writer.close
#
#   puts "Created '#{ARGV[1]}', containing #{text_length} characters."
#
#
# end
