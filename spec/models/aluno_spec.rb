require 'rails_helper'
require 'student'

RSpec.describe Student, :type => :model do
    fixtures :relations, :students, :disciplines

    describe ".carregarInfos" do
        context "given an empty nusp" do
            it "returns null" do
                expect(Student.carregarInfos(nil)).to eql([])
            end 
        end
    end
    
    describe ".carregarInfos" do
        context "given a nusp that does not exists" do
            it "returns null" do
                expect(Student.carregarInfos(0000000)).to eql([])
            end 
        end
    end
    
    describe ".carregarInfos" do
        context "given a nusp that exists" do
            it "returns periodos" do
                expect(Student.carregarInfos(1234567)).to eql(["manha", "tarde"])
            end 
        end
    end
    
end
