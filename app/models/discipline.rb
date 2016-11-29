class Discipline < ActiveRecord::Base
    has_many :relations
    belongs_to :course
    
    def self.gravarDisciplina (codigo, nome)
        disc = Discipline.find_by(code: codigo)
        if disc != nil then
            return "discipline_exists"
        else    
            Discipline.create(code: codigo, name: nome)
            return "success"
        end
    end
    
end
