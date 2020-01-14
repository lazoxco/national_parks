require_relative './national_parks/version'
require_relative './national_parks/park.rb'
require_relative './national_parks/scraper.rb'
require_relative './national_parks/cli.rb'

require 'Nokogiri'
require 'open-uri'

module NationalParks
  class Error < StandardError; end
  # Your code goes here...
end
