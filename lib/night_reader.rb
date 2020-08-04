require "./lib/file_reader"

class NightReader
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end
end
