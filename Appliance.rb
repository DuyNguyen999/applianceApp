class Appliance
    attr_accessor :name, :made, :room

    APPLIANCES = []

    def initialize (name, made, room)
        @name = name
        @made = made
        @room = room
        APPLIANCES << self
    end
  
    def self.find(keyword)
        APPLIANCES.each do |ele|
            if ele.name == keyword 
            puts "got one" 
            else puts "No, we need to buy one. An alien may steal it !!!"
            end
        end        
    end
    def self.modify(search_input, new_input_name, new_input_brand, new_input_room)
        APPLIANCES.each do |ele|            
            return ele.name = new_input_name, ele.made = new_input_brand, ele.room = new_input_room if ele.name == search_input             
        end         
    end
    def self.delete(keyword)
        APPLIANCES.each do |ele|
            if ele.name == keyword
                ele.name = nil
                ele.made = nil
                ele.room = nil
            end
        end
    end    
    def self.all
        temp = []
        APPLIANCES.each do |x|
            temp.push(x) unless x.name.nil?
        end
        if temp.length < 1
        puts "No appliances" 
        else return temp
        end
    end
    def to_s
        [            
            "NAME: ","#{@name}",
            "MADE: ","#{@made}",
            "ROOM: ","#{@room}"
        ].join(' ')
    end

end

#####
def draw_table
    table = TTY::table.new(["Heading1", "Heading2", "Heading3"], [ [], [], [], []  ])
    puts table.render(:ascii)
end

####