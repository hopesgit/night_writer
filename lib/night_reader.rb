require "./lib/file_reader"

class NightReader
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def read
    @reader.read(ARGV[0])
    @reader.create
    @reader.file_text
  end

  # def encode_file_to_braille
  #   start = read
  #   braille = encode_to_braille(plain)
  #   text_to_add = too_many_characters(braille)
  #   File.write(ARGV[1], text_to_add)
  #   p "#{ARGV[1]} created with #{text_to_add.length} characters!"
  # end
  #
  def encode_to_english(input)
    require "pry"; binding.pry
    input_array_ver = input.chars
    input_array_ver.map do |input_item|
      @reader.all_characters[input_item]
    end
  end
  #
  # def too_many_characters(braille)
  #   final_text = ""
  #   if braille.length > 40
  #     divisor = braille.length / 40
  #     segments = []
  #     if braille.length % 40.0 == 0
  #       divisor.times do
  #         segments << braille.slice!(0..39)
  #       end
  #       segments.each do |block|
  #         final_text += translate_to_braille(block)
  #       end
  #     else
  #       divisor.times do
  #         segments << braille.slice!(0..39)
  #       end
  #       segments << braille.slice!(0..-1)
  #       segments.each do |block|
  #         final_text += translate_to_braille(block)
  #       end
  #     end
  #   else
  #     final_text += translate_to_braille(braille)
  #   end
  #   final_text
  # end
  #
  # def translate_to_braille(text_to_translate)
  #   first_part = ""
  #   second_part = ""
  #   third_part = ""
  #   text_to_translate.each do |text|
  #     first_part += text[0..1]
  #     second_part += text[2..3]
  #     third_part += text[4..5]
  #   end
  #   first_part + "\n" + second_part + "\n" + third_part + "\n"
  # end
end
