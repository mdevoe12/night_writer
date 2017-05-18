require_relative 'file_reader'
require_relative 'dictionary'

class ReverseRosettaStone

  attr_reader :top_val,
              :mid_val,
              :bottom_val


  def initialize
    @top_val    = ""
    @mid_val    = ""
    @bottom_val = ""
    @reader     = FileReader.new.reader
    @dictionary = Dictionary.new
    @top        = @dictionary.top
    @mid        = @dictionary.mid
    @bottom     = @dictionary.bottom

  end

  def inverse_top(input)
    @dict = @top.invert
    input.length.times do
      input.chars.each_slice(2).map do |slice|
        if slice == @dict.keys[0]
          @top_val = @top_val + @dict.values[0]
        elsif slice == @dict.keys[1]
          @top_val = @top_val + @dict.values[1]
        elsif slice == @dict.keys[2]
          @top_val = @top_val + @dict.values[2]
        elsif slice == @dict.keys[3]
          @top_val = @top_val + @dict.values[3]
        end
      end
    end
    @top_val
  end

  def inverse_mid(input)
    @dict = @mid.invert
    input.length.times do
      input.chars.each_slice(2).map do |slice|
        if slice == @dict.keys[0]
          @mid_val = @mid_val + @dict.values[0]
        elsif slice == @dict.keys[1]
          @mid_val = @mid_val + @dict.values[1]
        elsif slice == @dict.keys[2]
          @mid_val = @mid_val + @dict.values[2]
        elsif slice == @dict.keys[3]
          @mid_val = @mid_val + @dict.values[3]
        end
      end
    end
    @mid_val
  end

  def inverse_bottom(input)
    @dict = @bottom.invert
    input.length.times do
      input.chars.each_slice(2).map do |slice|
        if slice == @dict.keys[0]
          @bottom_val = @bottom_val + @dict.values[0]
        elsif slice == @dict.keys[1]
          @bottom_val = @bottom_val + @dict.values[1]
        elsif slice == @dict.keys[2]
          @bottom_val = @bottom_val + @dict.values[2]
        elsif slice == @dict.keys[3]
          @bottom_val = @bottom_val + @dict.values[3]
        end
      end
    end
    @bottom_val
  end

  def combine
    char = "#{@top_val} + #{@mid_val} + #{@bottom_val}"
  end


  def slice_braille(input)
    duplicate = input.chars.select{|char| val.count(char) > 1}
    duplicate.uniq
  end
end
