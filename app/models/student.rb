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
        infos = []
        aluno = Student.find_by(nusp: nusp)
        if aluno.nil?
            return infos
        end
        # a ordem dos parametros : nusp, nome, email, curso, ano, manha, tarde, noite
        infos.push(aluno.name)
        infos.push(aluno.email)
        infos.push(aluno.course_id)
        infos.push(aluno.ano_de_entrada)
        if aluno.manha == "sim"
            infos.push("sim")
        else
            infos.push("nao")
        end
        if aluno.tarde == "sim"
            infos.push("sim")
        else
            infos.push("nao")
        end
        if aluno.noite == "sim"
            infos.push("sim")
        else
            infos.push("nao")
        end
        return infos
    end
    
    def self.salvarInfos (nusp, manha, tarde, noite)
        salvos = false
        aluno = Student.find_by(nusp: nusp)
        if not aluno.nil?
            idAluno = aluno.id
            Student.update(idAluno, :manha => manha, :tarde => tarde, :noite => noite)
            salvos = true
        else
            Student.create(:name => "", :nusp => nusp, :course_id => 1, :manha => manha, :tarde => tarde, :noite => noite)
            salvos = true
        end
        return salvos
    end
    
    def self.gravarInfos (nusp, nome, email, curso, ano, manha, tarde, noite)
       if nusp == nil || nome == nil || email == nil || curso == nil || ano == nil then
           return false
       end
       if nusp == "" || nome == "" || email == "" || curso == "" || ano == "" then
           return false
       end
       aluno = Student.find_by(nusp: nusp)
       if aluno == nil then
            Student.create(:name => nome, :nusp => nusp, :email => email, :course_id => curso, :ano_de_entrada => ano, :manha => manha, :tarde => tarde, :noite => noite)
            return true
       else
           return false
       end
    end
end