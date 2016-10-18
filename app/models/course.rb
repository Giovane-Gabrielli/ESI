class Course < ActiveRecord::Base
    has_many :disciplines
    
    def teste(id)
        render html: "renderizado no model" + id
    end
    
end