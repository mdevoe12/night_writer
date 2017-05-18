class Dictionary

  attr_reader :top,
              :mid,
              :bottom

  def initialize
    @top    = {"abehkloruvz1258"          => "0.",
               "cdfgmnpqxy3467"           => "00",
               "ijstw#09"                 => ".0",
               "',-.?! "                  => "..",
               "ABEHKLORUVZ"              => "..0.",
               "CDFGMNPQXY"               => "..00",
               "IJSTW"                    => "...0"}
    @mid    = {"bfilpsv,?269"             => "0.",
               "ghjqrtw!."                => "00",
               "denoyz#45"                => ".0",
               "ackmux'- "                => "..",
               "BFILPSV"                  => "..0.",
               "GHJQRTW"                  => "..00",
               "DENOYZ"                   => "...0",
               "ACKMUX"                   => "...."}
    @bottom = {"klmnopqrst!'"             => "0.",
                 "uvxyz-?#"               => "00",
                 "w."                     => ".0",
                 "abcdefghij,0123456789 " => "..",
                 "KLMNOPQRST"             => "..0.",
                 "UVWYZ"                  => "..00",
                 "ABCDEFGHIJ"             => "...."}
  end  
end
