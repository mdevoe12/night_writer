require 'pry'

require_relative 'file_reader'

class RosettaStone
  attr_reader :reader

  def initialize
   @reader = FileReader.new.read

    @top = {"abehkloruvz1258" => "0.",
            "cdfgmnpqxy3467" => "00",
            "ijstw#09" => ".0",
            "',-.?! " => "..",
            " @" => ".."}
    @mid = {"bfilpsv,?269" => "0.",
            "ghjqrtw!." => "00",
            "denoyz#45" => ".0",
            "ackmux'- " => ".."}
    @bottom = {"klmnopqrst!'" => "0.",
              "uvxyz-?#" => "00",
              "w." => ".0",
              "abcdefghij,0123456789 " => ".."}
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

  private

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

end
