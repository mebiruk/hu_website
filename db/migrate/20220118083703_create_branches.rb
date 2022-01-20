class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :location
      t.string :name
      t.integer :phone_number
      t.integer :second_phone_number
      t.string :email
      t.string :map
      t.references :college, foreign_key: true

      t.timestamps
    end
  end
end
