class CreateA1cs < ActiveRecord::Migration
  def change
    create_table :a1cs do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
