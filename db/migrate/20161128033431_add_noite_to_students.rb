class AddNoiteToStudents < ActiveRecord::Migration
  def change
    add_column :students, :noite, :string
  end
end
