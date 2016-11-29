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
    
    def self.salvarInfos (nusp, manha, tarde, noite)
        salvos = false
        aluno = Student.find_by(nusp: nusp)
        if not aluno.nil? 
            p "sasasassas"
            idAluno = aluno.id
            Student.update(idAluno, :manha => manha, :tarde => tarde, :noite => noite)
            salvos = true
        else
            Student.create(:name => "", :nusp => nusp, :course_id => 1, :manha => manha, :tarde => tarde, :noite => noite)
            salvos = true
        end
        return salvos
    end
end