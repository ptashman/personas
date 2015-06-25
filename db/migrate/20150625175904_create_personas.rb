class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.integer :product_owner_id
      t.timestamps null: false
    end
  end
end
