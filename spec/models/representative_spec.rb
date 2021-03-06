require "spec_helper"
describe Representative do
    it "first name is pancho" do
        representative = Representative.new
        representative.first_name = "pancho"
        expect(representative.first_name).to eq("pancho")
    end
    
    it "last name is lastname" do
        representative = Representative.new
        representative.last_name = "lastname"
        expect(representative.last_name).to eq("lastname")
    end
    
    it "is assigned to uin 123" do
        representative = Representative.new
        representative.uin = "123"
        expect(representative.uin).to eq("123")
    end
    
    it "email is 123@email.com" do
        representative = Representative.new
        representative.email = "123@email.com"
        expect(representative.email).to eq("123@email.com")
    end     
    
    it "is saved to database" do
        def save_representative(representative)
            "saved!" if representative.save
        end
        @representative = Representative.new(:first_name => "pancho", :last_name =>"last_name", :uin => "123", :email => "123@email.com", :department_id =>1)
        @representative.save!
        expect(save_representative(@representative)).to eq("saved!")
    end
    
end