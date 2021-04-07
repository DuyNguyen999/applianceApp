require "./Appliance"


# This method will iterate over each line individually from the .txt # file and print it to the console

puts File.read(File.open("./ascii-art.txt"))
puts ""
puts "Welcome to Appliance App".center(100)
puts ""
puts "You have 4 command options: add, list, modify, delete, find, show".center(100)

begin   
    print "\nPlease enter your command:  "
    input = gets.chomp
    if input == "add"
        puts "\nName of the appliance "
        name = gets.chomp

        puts "\nBrand of the appliance "
        made = gets.chomp

        puts "\nRoom of the appliance "
        room = gets.chomp
        
        appliances = Appliance.new name, made, room
        # appliances.save
    end
    if input == "list"
        puts "\nInformation of all the appliances"
        puts Appliance.all
    end
    if input == "show"
        puts "\nPlease enter the item you need to show: "
        key = gets.chomp
        Appliance.show key
        
    end

    if input == "modify"
        puts "\nName of the appliance "
        search_input = gets.chomp
      
        puts "\nNew name of the appliance "
        new_name = gets.chomp
        puts "\nNew brand of the appliance "
        new_brand = gets.chomp
        puts "\nNew room of the appliance "
        new_room = gets.chomp
        
        Appliance.modify search_input, new_name, new_brand, new_room
    end
    if input == "delete"
        puts "Please enter the item you need to delete: "
        keyword = gets.chomp
        Appliance.delete keyword
    end
    if input == "find"
        puts "Please enter the item you need to find: "
        keyword = gets.chomp
        Appliance.find keyword
    end
end until ['quit','q'].include? input
