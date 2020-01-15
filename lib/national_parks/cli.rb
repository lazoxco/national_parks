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
    puts "Select a number to learn more about a National Park:"
    list_selection = gets.strip.to_i
    if list_selection <= 0 || list_selection > Park.all.length
        puts "Invalid selections. Try picking a number from 1 - #{Park.all.length}"
        list_parks
    else
        park_details(list_selection - 1)
    end
  end 

  def park_details(index)
    puts "\n\n#{Park.all[index].name} - #{Park.all[index].type} - #{Park.all[index].location}\n"
    puts "#{Park.all[index].description}\n\n"
    puts "Please enter 'list' to view a list of parks or 'exit' to quit the program: "
  end 
end