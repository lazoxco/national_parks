require 'pry'

class NationalParks::CLI 
    
    def call
        Scraper.scrape
        # binding.pry
        menu
    end

    def menu 
        input = nil

        puts "Welcome to the National Parks Gem"
        puts "Please enter 'list' to view a list of parks or 'exit' to quit the program: "

        while input != "exit"
            input = gets.strip

            if input == "list"
                list_parks
                puts "Select a number to learn more about a National Park:"
            elsif input == "exit"
                puts "See you later!"
            else
                puts "That isn't one of the commnads, try 'list' or 'exit'."
            end
        end
    end
    
    def list_parks 
        puts "1. George Rogers Clark"
        puts "2. Indiana Dunes"
        puts "3. Lewis & Clark"
        puts "4. Licoln Boyhood"
    end 


end