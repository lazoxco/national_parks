require_relative './national_parks/version'
require_relative './national_parks/park.rb'
require_relative './national_parks/scraper.rb'
require_relative './national_parks/cli.rb'

require 'nokogiri'
require 'open-uri'
require 'pry'

module NationalParks
  class Error < StandardError; end
  # Your code goes here...
end
