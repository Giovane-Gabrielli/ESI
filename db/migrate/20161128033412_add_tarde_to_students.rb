class AddTardeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :tarde, :string
  end
end
