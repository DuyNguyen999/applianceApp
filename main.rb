require "./Appliance"

puts "Welcome to Appliance App"
# This method will iterate over each line individually from the .txt # file and print it to the console
def display_ascii_art
    File.readlines("./ascii-art.txt") do |line|
      puts line
    end
end

puts display_ascii_art

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
        # appliances.save
        puts Appliance.all
    end
    if input == "modify"
        puts "New name of the appliance "
        new_name = gets.chomp
        appliances.name = new_name
        puts Appliance.all
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
