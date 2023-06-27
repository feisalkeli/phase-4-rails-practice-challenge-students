class AddInstructorIdToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :Students, :string
    add_column :students, :instructor_id, :integer
  end
end
