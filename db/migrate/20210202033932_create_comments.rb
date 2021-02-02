class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :username
      t.string :content
      t.integer :likes
      t.datetime :date

      t.timestamps
    end
  end
end
