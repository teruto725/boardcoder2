class AddNameProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string #追記
  end
end
