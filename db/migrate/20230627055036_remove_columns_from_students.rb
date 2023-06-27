class RemoveColumnsFromStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :Students, :string
    remove_column :students, :instructor_id, :string
  end
end
