require 'rails_helper'
require 'discipline'

RSpec.describe Discipline, :type => :model do
    fixtures :relations, :students, :disciplines

    describe ".gravarDisciplina" do
        context "given a discipline that already exists" do
            it "returns error" do
                expect(Discipline.gravarDisciplina("ACH2001", "Introdução à Programação")).to eql("discipline_exists")
            end 
        end
    end
    
    describe ".gravarDisciplina" do
        context "given a new discipline" do
            it "returns success" do
                expect(Discipline.gravarDisciplina("ACH2011", "Cálculo I")).to eql("success")
            end 
        end
    end
    
    
end
