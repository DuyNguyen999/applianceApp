require "./Appliance"

puts "Welcome to Appliance App"
# This method will iterate over each line individually from the .txt # file and print it to the console

puts File.read(File.open("./ascii-art.txt"))

puts "You have 4 command: add, show, modify, delete" 

begin   
    print "Please enter your command:  "
    input = gets.chomp
    if input == "add"
        puts "Name of the appliance "
        name = gets.chomp
        puts "Brand of the appliance "
        made = gets.chomp
        puts "Room of the appliance "
        room = gets.chomp
        
        appliances = Appliance.new name, made, room
        # appliances.save
    end
    if input == "show"
        puts "Information of the appliances"
        puts Appliance.all
    end
    if input == "modify"
        puts "New name of the appliance "
        new_name = gets.chomp
        appliances.name = new_name
        # puts Appliance.all
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
