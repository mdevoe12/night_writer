require 'pry'

#require_relative 'night_write'

class RosettaStone

  def initialize
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

  def trans_key(input)
    @output = ""
    @dict.each do |k, v|
      input.chars.map do |val|
        if k.include?(val)
        braille = val
        braille = braille.gsub(val, v)
        @output = @output + braille
        end
      end
    end
    @output
  end

  def top(input)
    @dict = @top
    trans_key(input)
  end

  def mid(input)
    @dict = @mid
    trans_key(input)
  end

  def bottom(input)
    @dict = @bottom
    trans_key(input)
  end

end

  # def mid(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @mid
  #    @mid.each do |k, v|
  #     input.chars.map do |val|
  #       if k.include?(val)
  #       braille = val
  #       braille = braille.gsub(val, v)
  #       @output_first = @output_first + braille
  #       end
  #     end
  #   end
  #  @output_first
  # end
  #
  # def bottom(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @bottom
  #    @bottom.each do |k, v|
  #     input.chars.map do |val|
  #       if k.include?(val)
  #       braille = val
  #       braille = braille.gsub(val, v)
  #       @output_first = @output_first + braille
  #       end
  #     end
  #   end
  #  @output_first
  # end



# From Top
# braille = ""
# @output_first = ""
# top_line = @top
#  @top.each do |k, v|
#   input.chars.map do |val|
#     if k.include?(val)
#     braille = val
#     braille = braille.gsub(val, v)
#     @output_first = @output_first + braille
#     end
#   end
# end
