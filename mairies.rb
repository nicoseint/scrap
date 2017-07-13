require 'rubygems'
require 'nokogiri'  
require 'open-uri'

communes_url={}
page_url= "http://annuaire-des-mairies.com/val-d-oise.html"
page = Nokogiri::HTML(open(page_url)) 

url=page.css("a.lientxt").to_a

url.each do |x|
	puts x["href"].sub(/./,"http://annuaire-des-mairies.com")
end

