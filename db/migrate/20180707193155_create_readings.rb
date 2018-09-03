class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.string :title, null: false
      t.string :subtitle
      t.integer :category_id
      t.string :summary, null: false
      t.text :content
      t.timestamps
    end
  end
end
