input_array = ARGV
first_arg, *the_rest = ARGV

require "./lib/file_reader"
require "./lib/file_reader"

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
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

puts ARGV.inspect

# File.new("#{the_rest}", "a+")
# File.open("#{first_arg}", "r, t").each do |chars|
#   # don't know yet
# end
