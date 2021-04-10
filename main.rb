require "./Appliance"
require "tty-prompt"
require "tty-progressbar"
require "tty-font"
require "colorize"

# This is the app intro
font = TTY::Font.new(:starwars)
puts font.write("Welcome to".center(30)).cyan
# iterate over each line individually from the .txt file and print it to the console
puts File.read(File.open("./ascii-art.txt")).yellow
puts ""

# progress bar
loading_percent = TTY::ProgressBar.new("Loading [:percent]", total: 25)
25.times do
    sleep(0.05)
    loading_percent.advance  
  end

prompt = TTY::Prompt.new
puts ""
# asking users for name
user_name = prompt.ask("What is your name?", default: "your name...").chomp
# gretting
puts "Hello #{user_name} !!".center(100)
puts "You have 7 command options: Add, List, Modify, Delete, Find, Help, Quit".center(100)
begin   
    # taking user command input
    command = ['Add', 'List', 'Modify', 'Delete', 'Find', 'Help', 'Quit']
    input = prompt.select("Choose your command: ", command).chomp

    # create new item
    if input == "Add"
        puts "\nName of the appliance ".yellow
        name = gets.chomp

        puts "\nBrand of the appliance ".yellow
        made = gets.chomp

        puts "\nRoom of the appliance ".yellow
        room = gets.chomp
        
        appliances = Appliance.new name, made, room
    end
    # show all items in the array
    if input == "List"
        puts "\nInformation of all the appliances"
        puts Appliance.list             
    end
    # edit item detail
    if input == "Modify"
        puts "\nName of the appliance that needs to modified "
        search_input = gets.chomp
      
        puts "\nNew name of the appliance ".yellow
        new_name = gets.chomp
        puts "\nNew brand of the appliance ".yellow
        new_brand = gets.chomp
        puts "\nNew room of the appliance ".yellow
        new_room = gets.chomp
        
        Appliance.modify search_input, new_name, new_brand, new_room
    end
    # delete item 
    if input == "Delete"
        puts "Please enter the item you need to delete: "
        delete_keyword = gets.chomp
        Appliance.delete delete_keyword
    end
    # find item
    if input == "Find"
        puts "Please enter the item you need to find: "
        find_keyword = gets.chomp
        Appliance.find find_keyword
    end
    # loading help document
    if input == "Help"
        puts File.read(File.open("./help.txt"))
    end
# exception handling
rescue
    puts "Error occured"
end until ['Quit','q'].include? input # exit the program
