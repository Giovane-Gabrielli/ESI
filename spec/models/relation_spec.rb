require 'rails_helper'
require 'relation'

RSpec.describe Relation, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
     describe ".gravarRelacao" do
        context "given a relation that already exists" do
            it "returns error" do
                expect(Relation.gravarRelacao("ACH2001", "1234567")).to eql("relation_exists")
            end 
        end
    end
    
    describe ".gravarRelacao" do
        context "given a new relation" do
            it "returns success" do
                expect(Relation.gravarRelacao("ACH2027", "1234567")).to eql("success")
            end 
        end
    end
  
end
