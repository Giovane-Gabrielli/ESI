load 'scraper/scraping_test.rb'

class Course < ActiveRecord::Base
    has_many :disciplines
    attr_accessor :id
    
    def self.initialInsert (curso)
        curso.upcase!
        id = curso
    end
    
    def self.metodo (curso)
        om = ObterMaterias.new 
        ajustarArrayDisciplinas(om.listarMaterias(curso))
    end
    
    def self.ajustarArrayDisciplinas (array)
       arrumado = []
       contador = 1
       array.each do |element|
           if (contador % 8 == 1 || contador % 8 == 2)
               arrumado.push(element)
           end
           contador += 1
       end
       return arrumado
    end
    
end