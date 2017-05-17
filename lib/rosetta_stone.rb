require 'pry'

require_relative 'file_reader'

class RosettaStone
  attr_reader :reader
  attr_accessor :top_line, :middle_line, :bottom_line

  def initialize

   @reader = FileReader.new.reader
   @top_line = ""
   @middle_line = ""
   @bottom_line = ""

   @top = {"abehkloruvz1258" => "0.",
             "cdfgmnpqxy3467" => "00",
             "ijstw#09" => ".0",
             "',-.?! " => "..",
             "ABEHKLORUVZ" => "..0.",
             "CDFGMNPQXY" => "..00",
             "IJSTW" => "...0"}
     @mid = {"bfilpsv,?269" => "0.",
             "ghjqrtw!." => "00",
             "denoyz#45" => ".0",
             "ackmux'- " => "..",
             "BFILPSV" => "..0.",
             "GHJQRTW" => "..00",
             "DENOYZ" => "...0",
             "ACKMUX" => "...."}
     @bottom = {"klmnopqrst!'" => "0.",
               "uvxyz-?#" => "00",
               "w." => ".0",
               "abcdefghij,0123456789 " => "..",
               "KLMNOPQRST" => "..0.",
               "UVWYZ" => "..00",
               "ABCDEFGHIJ" => "...."}
  end

  def top(input)
    @dict = @top
    @top_line << trans_key(input)
    binding.pry

  end

  def mid(input)
    @dict = @mid
    @middle_line << trans_key(input)
  end

  def bottom(input)
    @dict = @bottom
    @bottom_line << trans_key(input)
  end

  def trans_key(input)
    output = ""
    input.chars.map do |val|
      @dict.each do |key, value|
        if key.include?(val)
          braille = val
          braille = braille.gsub(val, value)
          output = output + braille
        end
      end
    end
    output.scan(/.{1,80}/).join(" ")#instaed of of returning output we return
    #sorting method
  end

  # sorting method(input)
  # map through sliced array of the chars input
  # shovel into the empty instance vairable strings
  #top_line << empty array
  # end



end
