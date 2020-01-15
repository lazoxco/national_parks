require 'pry'

class Scraper

    def self.scrape 
        html = Nokogiri::HTML(open("https://www.nps.gov/state/in/index.htm"))

        parks = html.css("div.table-cell.list_left")
        parks.each do |park|
            park_info = park.text.split(/\n/).reject {|c| c.empty?}
            Park.new(park_info[0], park_info[1], park_info[2], park_info[3])
        end 
    end
end