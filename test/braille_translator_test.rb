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

  def test_it_can_translate_to_braille_from_english
    skip
  end

  def test_it_can_translate_from_braille_to_english
    skip
  end
end
