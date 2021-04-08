class Room
    attr_accessor :room
    def initialize(room)
        @room = room
    end
   
end

room1 = Room.new("kitchen")
room2 = Room.new("bathroom")

room1.appliance = Appliance.new("tv")