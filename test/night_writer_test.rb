require "./lib/night_writer"
require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"

class NightWriterTest < Minitest::Test

  def test_it_is_a_night_writer
    writer = NightWriter.new

    assert_instance_of NightWriter, writer
  end

  def test_it_has_a_reader
    writer = NightWriter.new

    assert_instance_of FileReader, writer.reader
  end

  def test_encoding_to_braille
    writer = NightWriter.new
    writer.reader.stubs(:file_text).returns("hello world! ")
    plain = writer.read
    expected = ["0.00..", "0..0..", "0.0.0.", "0.0.0.", "0..00.", "......", ".000.0", "0..00.", "0.000.", "0.0.0.", "00.0..", "..000.", "......"]

    assert_equal expected, writer.encode_to_braille(plain)
  end

  def test_translating_to_braille
    writer = NightWriter.new
    plain = writer.read
    braille = writer.encode_to_braille(plain)

    assert_equal "0.0.0.0.0....00.0.0.00....\n00.00.0..0..00.0000..000..\n....0.0.0....00.0.0...0...", writer.translate_to_braille(braille)
  end

  def test_encoding_files_to_braille
    writer = NightWriter.new

    assert_equal "Check the file!", writer.encode_file_to_braille
  end
end
