require 'rails_helper'
require 'student'

RSpec.describe Student, :type => :model do
    fixtures :relations, :students

    describe ".carregarDisciplinas" do
        context "given an empty nusp" do
            it "returns null" do
                expect(Student.carregarDisciplinas(nil)).to eql([])
            end 
        end
    end
    
    describe ".carregarDisciplinas" do
        context "given a nusp that does not exists" do
            it "returns null" do
                expect(Student.carregarDisciplinas(0000000)).to eql([])
            end 
        end
    end
    
    describe ".carregarDisciplinas" do
        context "given a nusp that exists" do
            it "returns disciplinas" do
                expect(Student.carregarDisciplinas(1234567)).to eql([12, 13])
            end 
        end
    end
    
end
