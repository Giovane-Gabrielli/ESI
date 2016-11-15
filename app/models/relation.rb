class Relation < ActiveRecord::Base
    belongs_to :discipline
    belongs_to :student
end
