class CreateExers < ActiveRecord::Migration[7.0]
  def change
    create_table :exers do |t|
      t.integer :user_id
      t.integer :is_type, default: 0
      t.string :title
      t.integer :number

      t.timestamps
    end
  end
end
