require 'pry'

class NationalParks::CLI 
    
    def call
        Scraper.scrape
        menu
    end

    def menu 
        input = nil

        puts "Welcome to the National Parks Gem"
        puts "Please enter 'list' to view a list of National Park or 'exit' to quit the program: "

        while input != "exit"
            input = gets.strip

            if input == "list"
                list_parks
                puts "Select a number to learn more about a National Park:"
                list_selection = gets.strip.to_i - 1
                park_details(list_selection)
            elsif input == "exit"
                puts "See you later!"
            else
                puts "That isn't one of the commnads, try 'list' or 'exit'."
            end
        end
    end
    
    def list_parks 
        Park.all.each_with_index do |park, index|
            puts "#{index + 1}. #{park.name}"
        end 
    end 

    def park_details(index)
        puts "\n\n#{Park.all[index].name} - #{Park.all[index].type} - #{Park.all[index].location}\n"
        puts "#{Park.all[index].description}\n\n"
        puts "Please enter 'list' to view a list of parks or 'exit' to quit the program: "
    end 
end