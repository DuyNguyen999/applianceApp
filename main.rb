require "./Appliance"

puts "Welcome to Appliance App"
# This method will iterate over each line individually from the .txt # file and print it to the console

puts File.read(File.open("./ascii-art.txt"))

puts "You have 4 command options: add, list, modify, delete, find, show" 

begin   
    print "\nPlease enter your command:  "
    input = gets.chomp
    if input == "add"
        puts "\nName of the appliance "
        name = gets.chomp
        puts "\nBrand of the appliance "
        made = gets.chomp
        puts ""
        puts "Room of the appliance ".center(100)
        room = gets.chomp
        
        appliances = Appliance.new name, made, room
        # appliances.save
    end
    if input == "list"
        puts "Information of all the appliances"
        puts Appliance.all
    end
    if input == "show"
        puts "Please enter the item you need to show: "
        key = gets.chomp
        Appliance.show key
        
    end

    if input == "modify"
        puts "New name of the appliance "
        new_name = gets.chomp
        appliances.name = new_name
        #use the find method
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
