require "./lib/file_reader"
require "./lib/braille_translator"

class NightWriter
  attr_reader :reader, :translator

  def initialize
    @reader = FileReader.new
    @translator = BrailleTranslator.new("")
  end

  def read
    @reader.read(ARGV[0])
    @reader.create
    @reader.file_text
  end

  def encode_file_to_braille
    plain = read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    input_array_ver = input.chars
    input_array_ver.map do |input_item|
      @reader.all_characters[input_item]
    end
  end
end

# writer = NightWriter.new
# writer.read
#
# puts ARGV.inspect
