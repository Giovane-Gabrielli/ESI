class AddAnoDeEntradaToStudents < ActiveRecord::Migration
  def change
    add_column :students, :ano_de_entrada, :string
  end
end
