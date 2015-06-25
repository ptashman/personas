class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :persona_id
      t.integer :product_id
      t.timestamps null: false
    end
  end
end
