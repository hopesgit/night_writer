require "./lib/braille_translator"
require "minitest/autorun"
require "minitest/pride"

class BrailleTranslatorTest < Minitest::Test

  def test_it_is_a_translator
    trans = BrailleTranslator.new("empty")
    assert_instance_of BrailleTranslator, trans
  end

  def test_it_has_details
    trans = BrailleTranslator.new("empty")
    assert_equal "empty", trans.text_to_translate
    assert_equal "Braille", trans.direction
  end

end
