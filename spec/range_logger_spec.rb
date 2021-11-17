require 'spec_helper'
require 'date'

RSpec.describe RangeLogger do
  let(:parser) { RangeLogger::LogsParser.new({file: File.open('spec/files/test.log'), from: DateTime.new(2021,10,26,17,30,0), to: DateTime.new(2021,10,28,20,12,30)}) }

  describe 'version number' do
    it "returns correct version number" do
      expect(RangeLogger::VERSION).to eq('1.0.0')
    end
  end

  describe 'format_date' do
    it "returns formatted date" do
      expect(parser.format_date(DateTime.new(2021,11,26,17,30,15))).to eq("2021_11_26_17-30-15")
    end
  end

  describe 'matched_logs' do
    it "returns matched logs" do
      expect(parser.matched_logs).to eq(["I, [2021-10-26T17:41:56.979971 #218269]  INFO -- : [] Line2\n", "I, [2021-10-27T18:41:56.979971 #218269]  INFO -- : [] Line3\n"])
    end
  end
end
