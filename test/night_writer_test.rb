require "./lib/night_writer"
require "minitest/autorun"
require "minitest/pride"

class NightWriterTest < Minitest::Test

  def test_it_is_a_night_writer
    writer = NightWriter.new

    assert_instance_of NightWriter, writer
  end

  def test_it_has_attributes
    writer = NightWriter.new

    assert_instance_of FileReader, writer.reader
    assert_instance_of BrailleTranslator, writer.translator
  end

  def test_encoding_to_braille
    writer = NightWriter.new
    plain = writer.read
    expected = ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.", "......", ".000.0", "0..00.", "0.000.", "0.0.0.", "00.0..", "..000.", "......"]

    assert_equal expected, writer.encode_to_braille(plain)
  end
end
