class Discipline < ActiveRecord::Base
    has_many :relations
    belongs_to :course
    
    def self.metodo (nusp)
        nusp
    end
end
