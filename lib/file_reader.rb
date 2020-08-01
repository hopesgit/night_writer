class FileReader

  def initialize
  end

  def read
    filename = ARGV[0]
    File.read(filename)
  end
end
