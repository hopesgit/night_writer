require "./lib/file_reader"
require "./lib/braille_translator"

class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def read
    @reader.read(ARGV[0])
    require "pry"; binding.pry
    File.write(ARGV[1])
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end

writer = NightWriter.new
writer.read

puts ARGV.inspect
