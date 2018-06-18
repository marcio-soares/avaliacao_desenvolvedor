require 'rails_helper'

RSpec.describe 'Check if file' do
  let(:file) { File.open('spec/fixtures/dados.txt', 'r') }
  let(:parsed_file) { ParserFileService.new(file) }

  it 'exist' do
    expect(File.exist?(file)).to be_truthy
  end

  it 'returned array when parsed' do
    expect(parsed_file.call.is_a?(Array)).to be_truthy
  end

  it 'returned with content' do
    expect(parsed_file.content?).to be_truthy
  end

  it 'has tab delimited' do
    expect(parsed_file.tab_delimited?).to be_truthy
  end
end
