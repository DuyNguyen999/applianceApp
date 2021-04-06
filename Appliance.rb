class Appliance
    attr_accessor :name, :made, :room

    APPLIANCES = []

    def initialize (name, made, room)
        @name = name
        @made = made
        @room = room
        APPLIANCES << self
    end
    # def save
    #     APPLIANCES << self
    # end
  
    def self.find(appliances)
        p APPLIANCES
        if APPLIANCES.include? appliances.name
          puts "Yes, we have this item in the house."
        end
        
        puts "No, we need to buy one."
    end
  
    # def self.find(id)
    #     if APPLIANCES.detect {|appliance| appliance.name == id }
    #     puts "Yes, we have this item in the house."
    #     end
        
    #     puts "No, we need to buy one."
    # end

    def self.all
        APPLIANCES
    end
    def to_s
        [            
            "NAME: ","#{@name}",
            "MADE: ","#{@made}",
            "ROOM: ","#{@room}"
        ].join(' ')
    end

end
