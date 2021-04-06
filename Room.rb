class Room
    attr_accessor :applicance
    def initialize()
        @appliance = appliance

    end
    APPLIANCES = []
    
end

room1 = Room.new("kitchen")
room2 = Room.new("bathroom")

room1.appliance = Appliance.new("tv")