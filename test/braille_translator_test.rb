require "./lib/braille_translator"
require "minitest/autorun"
require "minitest/pride"

class BrailleTranslatorTest < Minitest::Test

  def test_it_is_a_translator
    trans = BrailleTranslator.new(empty)
    assert_instance_of BrailleTranslator, trans
  end
end
