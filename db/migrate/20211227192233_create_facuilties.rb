class CreateFacuilties < ActiveRecord::Migration[5.2]
  def change
    create_table :facuilties do |t|
      t.string :name

      t.timestamps
    end
  end
end
