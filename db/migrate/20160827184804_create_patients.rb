class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.integer :height
      t.integer :weight
      t.date :birthday

      t.timestamps null: false
    end
  end
end
