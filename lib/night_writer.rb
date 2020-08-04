require "./lib/file_reader"

class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def read
    @reader.read(ARGV[0])
    @reader.create
    @reader.file_text
  end

  def encode_file_to_braille
    plain = read
    braille = encode_to_braille(plain)
    text_to_add = translate_to_braille(braille)
    File.write("./braille.txt", text_to_add)
    p "Check the file!"
  end

  def encode_to_braille(input)
    input_array_ver = input.chars
    input_array_ver.map do |input_item|
      @reader.all_characters[input_item]
    end
  end

  def translate_to_braille(text_to_translate)
    # newline_placement = text_to_translate.count * 2
    first_part = ""
    second_part = ""
    third_part = ""
    text_to_translate.each do |text|
      first_part += text[0..1]
      second_part += text[2..3]
      third_part += text[4..5]
    end
    first_part + "\n" + second_part + "\n" + third_part
  end
end

# writer = NightWriter.new
# writer.read
#
# puts ARGV.inspect
