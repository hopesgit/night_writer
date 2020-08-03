require "csv"

class FileReader
  attr_reader :all_characters, :file_text

  def initialize
    @all_characters = {}
    @file_text      = ""
  end

  def read(filename)
    text = File.read(filename)
    text.gsub!("\n", " ")
    @file_text = text
    text
  end

  def create
    CSV.foreach("./data/translations.csv", headers: true, header_converters: :symbol) do |row|
      eng_char = row[:eng_char]
      brai_char = row[:brai_char]
      @all_characters[eng_char] = brai_char
    end
  end
end
