require 'nokogiri'

slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.xpath('//story').map { |i|
    {
      title: i.at_xpath('title').content,
      link: i.at_xpath('url').content,
      summary: i.at_xpath('department').content
    }
  }
end

p slashdot_articles
