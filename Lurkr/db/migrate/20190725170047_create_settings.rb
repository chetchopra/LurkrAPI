class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.integer :num_records
      t.integer :num_cols
      t.integer :theme_id
      t.timestamps
    end
  end
end
