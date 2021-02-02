class AddKindToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :kind, :string
  end
end
