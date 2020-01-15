require 'pry'

class Scraper

    def self.scrape 
        html = Nokogiri::HTML(open("https://www.nps.gov/state/in/index.htm"))

        park_names = html.css("div.table-cell h3").map do |title|
            title.text
        end 

        # park_types = html.css()

        park_names.each do |park_name|
            Park.new(park_name)
        end 
    end 
end