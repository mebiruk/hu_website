class AddStudentToAlumnis < ActiveRecord::Migration[5.2]
  def change
    add_column :almunis, :student_id, :string
    # add_index :alumnis, :Student, unique: true
  end
end
