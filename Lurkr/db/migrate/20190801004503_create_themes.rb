class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :header
      t.string :background
      t.string :subreddit
      t.string :post
      t.string :theme_name
      t.timestamps
    end
  end
end
