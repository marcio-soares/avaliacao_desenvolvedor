class ParserFileService
  attr_reader :file
  def initialize(file)
    @file = file
  end

  def call
    content_splited
  end

  def tab_delimited?
    file_content.find { |match| /\t/ =~ match }
  end

  def content?
    file_content.present?
  end

  def content_splited
    file_content.map { |c| c.split(/\t/) }
  end

  def file_array
    file.each_line.select { |line| line }
  end

  def file_content
    file_array.reject.with_index { |_, i| i.zero? }
  end
end
