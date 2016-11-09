class AddDisciplineRefToRelations < ActiveRecord::Migration
  def change
    add_reference :relations, :discipline, index: true, foreign_key: true
  end
end
