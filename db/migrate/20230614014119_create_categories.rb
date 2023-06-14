class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :is_type, default: 0
      t.string :title
      t.string :img
      t.timestamps
    end
  end
end
