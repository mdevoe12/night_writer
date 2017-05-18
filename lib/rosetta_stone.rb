require_relative 'file_reader'
require_relative 'dictionary'

class RosettaStone

  attr_reader :reader

  def initialize
    @reader     = FileReader.new.reader
    @dictionary = Dictionary.new
    @top        = @dictionary.top
    @mid        = @dictionary.mid
    @bottom     = @dictionary.bottom
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
    input.chars.map do |letter|
      @dict.each do |key, value|
        if key.include?(letter)
          braille = letter
          braille = braille.gsub(letter, value)
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
