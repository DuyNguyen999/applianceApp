require "./Appliance"

puts "Welcome to Appliance App"

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
        puts "Information of the appliances"
        appliances = Appliance.new name, made, room
        puts Appliance.all
    end
    if input == "modify"
        puts "New name of the appliance "
        new_name = gets.chomp
        appliances.name = new_name
        puts Appliance.all
    end
    if input == "find"
        puts "Please enter the item you need to find: "
        keyword = gets.chomp
        Appliance.find keyword
    end
end until ['quit','q'].include? input
