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
        om.listarMaterias(curso)
    end
    
end