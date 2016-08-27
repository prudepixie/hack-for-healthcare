class CreateBloodpressures < ActiveRecord::Migration
  def change
    create_table :bloodpressures do |t|
      t.integer :systolic
      t.integer :diastolic

      t.timestamps null: false
    end
  end
end
