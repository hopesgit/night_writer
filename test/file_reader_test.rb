require "./lib/file_reader"
require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"

class FileReaderTest < Minitest::Test

  def test_it_is_a_file_reader
    reader = FileReader.new

    assert_instance_of FileReader, reader
  end

  def test_it_has_attributes
    reader = FileReader.new
    reader.read("./message.txt")
    reader.create

    assert_equal "hello world! ", reader.file_text
    assert_equal 43, reader.all_characters.keys.count
    assert_instance_of Hash, reader.all_characters
  end

  def test_it_can_read_files
    reader = FileReader.new

    assert_equal "hello world! ", reader.read("./message.txt")
  end

  def test_it_can_create_from_csv
    reader = FileReader.new
    reader.create
    reader.all_characters

    assert_equal 43, reader.all_characters.keys.count
  end
end
