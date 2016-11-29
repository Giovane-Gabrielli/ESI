# sempre usar um arry com o seguinte formato: [nusp, nome, email, curso, ano de entrada, manha*, tarde*, noite*] * - opcionais
require 'rails_helper'
require 'student'

RSpec.describe Student, :type => :model do
    fixtures :relations, :students, :disciplines, :courses
    
    describe ".gravarInfos" do
        context "given an empty" do
            it "returns false" do
                expect(Student.gravarInfos(nil, nil, nil, nil, nil, nil, nil, nil)).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an empty nusp" do
            it "returns false" do
                expect(Student.gravarInfos("", "Maria", "maria@usp.br", "1", 2009, "sim", "sim", "nao")).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an empty nome" do
            it "returns false" do
                expect(Student.gravarInfos(4444444, "", "maria@usp.br", "1", 2009, "sim", "sim", "nao")).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an empty email" do
            it "returns false" do
                expect(Student.gravarInfos(4444444, "Maria", "", "2", 2009, "sim", "sim", "nao")).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an empty curso" do
            it "returns false" do
                expect(Student.gravarInfos(4444444, "Maria", "maria@usp.br", "", 2009, "sim", "sim", "nao")).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an empty ano de entrada" do
            it "returns false" do
                expect(Student.gravarInfos(4444444, "Maria", "maria@usp.br", "1", "", "sim", "sim", "nao")).to eql(false)
            end 
        end
    end
    
    describe ".gravarInfos" do
        context "given an completely entry" do
            it "returns true" do
                expect(Student.gravarInfos(4444444, "Maria", "maria@usp.br", "1", 2009, "sim", "sim", "nao")).to eql(true)
            end 
        end
    end

end