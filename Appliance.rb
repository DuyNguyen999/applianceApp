class Appliance
    attr_accessor :name, :made, :room

    APPLIANCES = []

    def initialize (name, made, room)
        @name = name
        @made = made
        @room = room
        APPLIANCES << self
    end
  
    # def self.find(keyword)
    #     if APPLIANCES.first.name.include? keyword
    #     puts "Yes, we have this item in the house."
    #     else puts "No, we need to buy one."
    #     end
    # end
    
    # def self.find(keyword)
    #     if APPLIANCES.detect {|appliance| appliance.name == keyword }
    #     puts "Yes, we have this item in the house."
    #     else puts "No, we need to buy one."
    #     end
    # end
    # def self.find(keyword)
    #     APPLIANCES.each do |ele|
    #         if ele.name == keyword 
    #         puts "Yes, we have this item in the house."  
    #         else puts "No, we need to buy one. An alien may steal it !!!"
    #         end
    #     end        
    # end
    def self.find(keyword)
        APPLIANCES.each do |ele|
            if ele.name == keyword 
            return ele
            end
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
    def self.show(input)
        # taking params ? name? new find or print method?
        #check if nil? if found
        if Appliance.find(input).nil?
        puts input.name
        else puts "There is none."
        end


    end
    def self.all
        temp = []
        APPLIANCES.each do |x|
            temp.push(x) unless x.name.nil?
        end
        temp
    end
    def to_s
        [            
            "NAME: ","#{@name}",
            "MADE: ","#{@made}",
            "ROOM: ","#{@room}"
        ].join(' ')
    end

end
