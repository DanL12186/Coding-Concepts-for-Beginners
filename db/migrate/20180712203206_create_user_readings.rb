class CreateUserReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_readings do |t|
      t.integer :user_id, null: false
      t.integer :reading_id, null: false

      t.timestamps
    end
  end
end
