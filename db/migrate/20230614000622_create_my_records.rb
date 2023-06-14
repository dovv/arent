class CreateMyRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :my_records do |t|
      t.integer :user_id, comment: 'user id'
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
