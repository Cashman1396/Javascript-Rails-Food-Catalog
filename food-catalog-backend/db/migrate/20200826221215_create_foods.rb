class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :cost, default: "0.00"
      t.text :description
      t.string :image_url
      t.integer :catalog_id

      t.timestamps null: false
    end
  end
end
