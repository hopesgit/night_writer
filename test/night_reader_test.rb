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
end
