class AddFaculityToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_reference :programs, :facuilty, foreign_key: true
  end
end
