class Student < ActiveRecord::Base
    has_many :relations
    belongs_to :course
    
    def self.carregarDisciplinas (nusp)
        p "pa e pa" + nusp.class.to_s
        disciplinas = []
        aluno = Student.find_by(nusp: nusp)
        puts aluno
        if not aluno.nil? 
            idAluno = aluno.id
        end
        Relation.where(student_id: idAluno).find_each do |ds|
            disciplinas.push(ds.discipline_id)
        end
        return disciplinas
    end
end