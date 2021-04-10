class Appliance
    attr_accessor :name, :made, :room

    APPLIANCES = []
    # create new object
    def initialize (name, made, room)
        @name = name
        @made = made
        @room = room
        APPLIANCES << self # add to the array
    end
    #find method
    def self.find(keyword)
        APPLIANCES.each do |ele|
            return puts "We have one in the house" if ele.name == keyword                       
        end        
        puts "No, we need to buy one. An alien may steal it !!!"
    end
    #modify method
    def self.modify(search_input, new_input_name, new_input_brand, new_input_room)
        APPLIANCES.each do |ele|            
            return ele.name = new_input_name, ele.made = new_input_brand, ele.room = new_input_room if ele.name == search_input             
        end         
    end
    #delete method
    def self.delete(keyword)
        APPLIANCES.each do |ele|
            if ele.name == keyword
                ele.name = nil
                ele.made = nil
                ele.room = nil
            end
        end
    end    
    #list method
    def self.list
        temp = []
        APPLIANCES.each do |x|
            temp.push(x) unless x.name.nil?
        end
        if temp.length < 1
        puts "There is no appliances!!" 
        else return temp    
            
        end
    end
    #to string method
    def to_s
        [            
            "NAME: ","#{@name}",
            "MADE: ","#{@made}",
            "ROOM: ","#{@room}"
        ].join(' ')
    end
end

