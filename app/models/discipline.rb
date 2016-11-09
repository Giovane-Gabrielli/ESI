class Discipline < ActiveRecord::Base
    has_many :relations
    belongs_to :course
end
