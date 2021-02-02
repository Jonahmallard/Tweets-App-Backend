class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :username
      t.string :content
      t.integer :likes
      t.datetime :date

      t.timestamps
    end
  end
end
