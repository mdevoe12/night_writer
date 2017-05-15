require './lib/file_read'
require './lib/file_write'

#require_relative 'night_write'

class RosettaStone

  attr_reader :file_reader, :file_writer

  def initialize
    @file_writer = FileWriter.new
    @file_reader = FileReader.new
    @top = {"abehkloruvz1258" => "0.",
            "cdfgmnpqxy3467" => "00",
            "ijstw#09" => ".0",
            "',-.?!" => ".."}
    @mid = {"bfilpsv,?269" => "0.",
            "ghjqrtw!." => "00",
            "denoyz#45" => ".0",
            "ackmux'-" => ".."}
    @bottom = {"klmnopqrst!'" => "0.",
              "uvxyz-?#" => "00",
              "w." => ".0",
              "abcdefghij,0123456789" => ".."}
  end
#
# <<<<<<< HEAD:lib/rosetta_stone.rb
#   def trans_key(input)
#     @output = ""
#     @dict.each do |k, v|
# =======
#   def top(input)
#     braille = ""
#     @output_first = ""
#      @top.each do |k, v|
# >>>>>>> 6be6270dcedf920a48436019236f4761ba213ab5:lib/nite_write.rb
#       input.chars.map do |val|
#         if k.include?(val)
#         braille = val
#         braille = braille.gsub(val, v)
#         @output = @output + braille
#         end
#       end
#     end
#     @output
#   end
#
#   def top(input)
#     @dict = @top
#     trans_key(input)
#   end
#
#   def mid(input)
# <<<<<<< HEAD:lib/rosetta_stone.rb
#     @dict = @mid
#     trans_key(input)
#   end
#
#   def bottom(input)
#     @dict = @bottom
#     trans_key(input)
# =======
#     braille = ""
#     @output_first = ""
#      @mid.each do |k, v|
#       input.chars.map do |val|
#         if k.include?(val)
#         braille = val
#         braille = braille.gsub(val, v)
#         @output_first = @output_first + braille
#         end
#       end
#     end
#     @output_first
#   end
#
#   def bottom(input)
#     braille = ""
#     @output_first = ""
#      @bottom.each do |k, v|
#       input.chars.map do |val|
#         if k.include?(val)
#         braille = val
#         braille = braille.gsub(val, v)
#         @output_first = @output_first + braille
#         end
#       end
#     end
#     @output_first
# >>>>>>> 6be6270dcedf920a48436019236f4761ba213ab5:lib/nite_write.rb
#   end
#
#   def count(input)
#     input.chars.map |val|
#       val * 2
#       #hopefully this can iterate through for each line.
#       #going to need to be teaked tho im sure
#     end
#   end
#   # if __FILE__ == $0
#   nite = NightWriter.new
#   @text = nite.file_reader.read
#   nite.method(@text)
#
#   nite.file_writer.braille(nite.top, nite.mid, nite.bottom)
#   puts "Created #{ARGV[1]} containing #{nite.count} braille characters"
# end
#
# <<<<<<< HEAD:lib/rosetta_stone.rb
#   # def mid(input)
# =======
#
#
#   # def top_first(input)
# >>>>>>> 6be6270dcedf920a48436019236f4761ba213ab5:lib/nite_write.rb
#   #   braille = ""
#   #   @output_first = ""
#   #   top_line = @mid
#   #    @mid.each do |k, v|
#   #     input.chars.map do |val|
#   #       if k.include?(val)
#   #       braille = val
#   #       braille = braille.gsub(val, v)
#   #       @output_first = @output_first + braille
#   #       end
#   #     end
#   #   end
#   #  @output_first
#   # end
#   #
#   # def bottom(input)
#   #   braille = ""
#   #   @output_first = ""
#   #   top_line = @bottom
#   #    @bottom.each do |k, v|
#   #     input.chars.map do |val|
#   #       if k.include?(val)
#   #       braille = val
#   #       braille = braille.gsub(val, v)
#   #       @output_first = @output_first + braille
#   #       end
#   #     end
#   #   end
#   #  @output_first
#   # end
#
#
#
# # From Top
# # braille = ""
# # @output_first = ""
# # top_line = @top
# #  @top.each do |k, v|
# #   input.chars.map do |val|
# #     if k.include?(val)
# #     braille = val
# #     braille = braille.gsub(val, v)
# #     @output_first = @output_first + braille
# #     end
# #   end
# # end
