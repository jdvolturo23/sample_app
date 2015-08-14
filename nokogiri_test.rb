#require "rubygems"
#require "nokogiri"
#require "open-uri"

#doc = Nokogiri::HTML(open("http://www.zogsports.com/nyc/home.aspx/"))

#url = "http://www.zogsports.com/nyc/home.aspx"
#doc = Nokogiri::HTML(open(url))
#@Zog = doc.at_css(".onsale").text

#doc.css(".onsale").each do |item|
#  title = item.at_css(".prodLink").text
#  price = item.at_css(".PriceCompare .BodyS, .PriceXLBold").text[/\$[0-9\.]+/]
#  puts "#{title} - #{price}"
#  puts item.at_css(".prodLink")[:href]
#end