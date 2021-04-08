require "./Appliance"

RSpec.describe "Appliance" do
    
    it "should respond to name" do
        expect(Appliance.new "TV", "Sony", "Living Room").to respond_to (:name)    
    end

    it "should assign attribute to the object when initializing" do
        appliance = Appliance.new "TV", "Sony", "Living Room"
        expect(appliance.name).to eq "TV"
    end
   
    it "create new object add to the array" do
        expect {Appliance.new "TV", "Sony", "Living Room"}.to change {Appliance::APPLIANCES.length}.by 1
    end  
end


