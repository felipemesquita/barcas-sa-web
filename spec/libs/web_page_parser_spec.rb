require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe WebPageParser do
  before(:each) do
    @parser = WebPageParser.new(File.expand_path(File.dirname(__FILE__) + '/../fixtures/web_page_parser.html'))
  end

  it "should be able to parse the Barcas S.A. website" do
    @parser.parse.should == available_schedules
  end

  def available_schedules
    %w(6h 9h10 14h 18h 22h30).collect { |s| Time.parse(s) }
  end
end

