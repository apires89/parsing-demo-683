require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com
keyword = "chocolate"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{keyword}"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)


html_doc.search(".standard-card-new__article-title").each do |element|
  p element.text.strip
  p element.attribute('href').value
end
