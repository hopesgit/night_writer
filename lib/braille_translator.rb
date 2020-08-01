class BrailleTranslator
  attr_reader :text_to_translate, :direction

  def initialize(text_to_translate, direction="Braille")
    @text_to_translate = text_to_translate
    @direction = direction
  end

end
