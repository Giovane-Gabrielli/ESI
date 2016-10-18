class AddFacultyToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :faculty, :string
  end
end
