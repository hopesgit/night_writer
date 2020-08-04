require "./lib/night_reader"
require "minitest/autorun"
require "minitest/pride"

class NightReaderTest < Minitest::Test
  def test_it_is_a_night_reader
    understanding = NightReader.new

    assert_instance_of NightReader, understanding
  end

  def test_it_has_a_reader
    understanding = NightReader.new

    assert_instance_of FileReader, understanding.reader
  end

  def test_it_has_read_the_suggested_file
    understanding = NightReader.new
    understanding.read

    assert_equal ".00..0.0...0.0..0....00..0.0..0.00...00.0...0.000.0.000.000000..0.0.0.0.00000..0\n00000.0...0.0.......00.00.00...00...0000.0...0...00000.0.0...0..0.00.0...0....0.\n0.....0.....0.......0...0.0...0.....0.........0...0.....0...00..000.0.........0.\n.0...000.0.00.00..000.0.0..00...000...000..0..0.0...0.0.0.0.000.00..\n00..0..00.00.0....0.0..0..0..0...0.0...0.000..0..0....0...00...0.0..\n0...0.000.0...0...0.0.....0.......0...0.0.0...00......0...0.0.......", understanding.reader.file_text
  end

  def test_it_can_encode_to_english
  end

  def test_it_can_encode_files_to_english
  end

  def translate_to_english
    understanding = NightReader.new
    start = understanding.read

    assert_equal "", understanding.encode_to_english(start)
  end
end
