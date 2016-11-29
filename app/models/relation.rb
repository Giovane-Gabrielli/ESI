class Relation < ActiveRecord::Base
    belongs_to :discipline
    belongs_to :student
    
    def self.gravarRelacao (codigo, nusp)
        discipline_id = Discipline.find_by(code: codigo).id
        student_id = Student.find_by(nusp: nusp).id
        
        relation = Relation.find_by(discipline_id: discipline_id, student_id: student_id)
        if relation != nil then
            return "relation_exists"
        else    
            Relation.create(discipline_id: discipline_id, student_id: student_id)
            return "success"
        end
    end
    
    
end
