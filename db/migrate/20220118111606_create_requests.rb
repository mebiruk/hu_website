class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name_of_organization
      t.string :email
      t.integer :phone_number
      t.string :student_fullname
      t.boolean :approve
      t.integer :track_number
      t.references :almuni, foreign_key: true

      t.timestamps
    end
  end
end
