require "./Appliance"

RSpec.describe "Appliance" do
    
    it "should respond to name" do
        expect(Appliance.new "TV", "Sony", "Liv").to respond_to (:name)    
    end

    it "should be assign" do
        appliance = Appliance.new "TV", "Sony", "Liv"
        expect(appliance.name).to eq "TV"
    end
   
    it "create new object" do
        expect {Appliance.new "TV", "Sony", "Liv"}.to change {Appliance::APPLIANCES.length}.by 1
    end


    # it "should be respond to save" do
    #     expect(Appliance.delete).to respond_to APPLIANCES
    # end
end

# RSpec.describe "testing dmm" do
#     it "can add" do
#         actual_result = 1 + 1
#         expected_result = 3
#         expect(actual_result).not_to eq expected_result
#     end
# end
# RSpec.describe "testing dmm" do
#     it "can add" do
#         actual_result = 1 + 1
#         expected_result = 2
#         expect(actual_result).to eq expected_result
#     end
# end
