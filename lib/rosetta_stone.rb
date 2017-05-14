require 'pry'

class NightWriter

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

  def top(input)
    braille = ""
    @output_first = ""
    top_line = @top
     @top.each do |k, v|
      input.chars.map do |val|
        if k.include?(val)
        braille = val
        braille = braille.gsub(val, v)
        @output_first = @output_first + braille
        end
      end
    end
   @output_first
  end

  def mid(input)
    braille = ""
    @output_first = ""
    top_line = @mid
     @mid.each do |k, v|
      input.chars.map do |val|
        if k.include?(val)
        braille = val
        braille = braille.gsub(val, v)
        @output_first = @output_first + braille
        end
      end
    end
   @output_first
  end

  def bottom(input)
    braille = ""
    @output_first = ""
    top_line = @bottom
     @bottom.each do |k, v|
      input.chars.map do |val|
        if k.include?(val)
        braille = val
        braille = braille.gsub(val, v)
        @output_first = @output_first + braille
        end
      end
    end
   @output_first
  end

end


  # def top_first(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @top
  #   input.chars.map do |val|
  #     if top_line.keys[0].include?(val)
  #     symbol = top_line.values[0]
  #     braille = val
  #     braille = braille.gsub(val, symbol)
  #     @output_first = @output_first + braille
  #     end
  #   end
  #  @output_first
  # end
  #
  # def top_second(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @top
  #   input.chars.map do |val|
  #     if top_line.keys[1].include?(val)
  #     symbol = top_line.values[1]
  #     braille = val
  #     braille = braille.gsub(val, symbol)
  #     @output_first = @output_first + braille
  #     end
  #   end
  #  @output_first
  # end
  #
  # def top_third(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @top
  #   input.chars.map do |val|
  #     if top_line.keys[2].include?(val)
  #     symbol = top_line.values[2]
  #     braille = val
  #     braille = braille.gsub(val, symbol)
  #     @output_first = @output_first + braille
  #     end
  #   end
  #  @output_first
  # end
  # def top(input)
  #   top_var = ""
  #   top_first(input)
  #     top_var << @output_first
  #   top_second(input)
  #     top_var << @output_first
  #   top_third(input)
  #     top_var << @output_first
  #   top_fourth(input)
  #     top_var << @output_first
  #   top_var
  # end

  # def key_enum(input)
  #   braille = ""
  #   @output_first = ""
  #   top_line = @top
  #   @top.each_key do |k|
  #     input.chars.map do |val|
  #       if top_line.keys[k].include?(val)
  #       symbol = top_line.values[k]
  #       braille = val
  #       braille = braille.gsub(val, symbol)
  #       @output_first = @output_first + braille
  #       end
  #     end
  #   end
  #   @output_first
  # end
  #
  # def top_fourth(input)
  #   key_enum(input)
  # end
