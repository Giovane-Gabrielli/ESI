class AddStudentsRefToRelations < ActiveRecord::Migration
  def change
    add_reference :relations, :student, index: true, foreign_key: true
  end
end
