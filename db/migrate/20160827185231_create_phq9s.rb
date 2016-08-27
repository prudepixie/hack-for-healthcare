class CreatePhq9s < ActiveRecord::Migration
  def change
    create_table :phq9s do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
