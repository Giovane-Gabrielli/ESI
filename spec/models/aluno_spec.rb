require 'rails_helper'
require 'student'

RSpec.describe Student, :type => :model do
    fixtures :relations, :students, :disciplines, :courses

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
    
    describe ".salvarInfos" do
        context "given an nusp that exist and unchecked boxes" do
            it "returns false" do
                expect(Student.salvarInfos(1234567, "nao", "nao", "nao")).to eql(true)
            end 
        end
    end
    
    describe ".salvarInfos" do
        context "given nusp that exist and checked boxes" do
            it "returns false" do
                expect(Student.salvarInfos(1234567, "sim", "nao", "sim")).to eql(true)
            end 
        end
    end
    
    describe ".salvarInfos" do
        context "given a nusp that does not exist and unchecked boxes" do
            it "returns false" do
                expect(Student.salvarInfos(1111111, "nao", "nao", "nao")).to eql(true)
            end 
        end
    end
    
    describe ".salvarInfos" do
        context "given a nusp that does not exist and checked boxes" do
            it "returns false" do
                expect(Student.salvarInfos(2222222, "sim", "nao", "sim")).to eql(true)
            end 
        end
    end
    
end
