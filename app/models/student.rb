class Student < ActiveRecord::Base
    has_many :relations
    belongs_to :course
    
    def self.carregarDisciplinas (nusp)
        disciplinas = []
        aluno = Student.find_by(nusp: nusp)
        if not aluno.nil? 
            idAluno = aluno.id
        end
        Relation.where(student_id: idAluno).find_each do |ds|
            disciplinas.push(ds.discipline_id)
        end
        return disciplinas
    end
    
    def self.carregarInfos (nusp)
        periodos = []
        aluno = Student.find_by(nusp: nusp)
        if aluno.nil?
            return periodos
        end
        if aluno.manha == "sim"
            periodos.push("manha")
        end
        if aluno.tarde == "sim"
            periodos.push("tarde")
        end
        if aluno.noite == "sim"
            periodos.push("noite")
        end
        return periodos
    end
end