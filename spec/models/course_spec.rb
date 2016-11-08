require 'rails_helper'
require 'course'

RSpec.describe Course, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
    describe ".ajustarArrayDisciplinas" do
        context "given an empty array" do
            it "returns null" do
                expect(Course.ajustarArrayDisciplinas([])).to eql([])
            end 
        end
    end
end

RSpec.describe Course, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
    describe ".ajustarArrayDisciplinas" do
        context "given an empty array" do
            it "returns null" do
                fake_array = ["ACH0021", "Tratamento e Análise de Dados/ Informações", "", "", "30", "", "", ""]
                expect(Course.ajustarArrayDisciplinas(fake_array)).to eql(["ACH0021", "Tratamento e Análise de Dados/ Informações", "30"])
            end 
        end
    end
end