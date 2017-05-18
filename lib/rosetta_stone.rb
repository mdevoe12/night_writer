require 'pry'

require_relative 'file_reader'

class RosettaStone
  attr_reader :reader
  attr_accessor :top_line, :mid_line, :bottom_line

  def initialize
   @count = 0
   @reader = FileReader.new.reader


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
    output
  end

  def slice_top(input)
    top_line = slice_eighty(input)
  end

  def slice_mid(input)
    mid_line = slice_eighty(input)
  end

  def slice_bottom(input)
    bottom_line = slice_eighty(input)
  end

  def slice_eighty(input)
    input.chars.each_slice(80).map do |character|
      character.join
    end
  end
end
