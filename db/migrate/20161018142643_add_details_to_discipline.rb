class AddDetailsToDiscipline < ActiveRecord::Migration
  def change
    add_column :disciplines, :code, :string
    add_column :disciplines, :name, :string
  end
end
