class AddManhaToStudents < ActiveRecord::Migration
  def change
    add_column :students, :manha, :string
  end
end
