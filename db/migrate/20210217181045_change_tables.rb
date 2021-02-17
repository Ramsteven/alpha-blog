class ChangeTables < ActiveRecord::Migration[6.1]

  def up
    remove_column :users, :facebook
    remove_column :users, :twitter
    remove_column :users, :instagram
  end

  def down
    add_column :users, :facebook, :string
    add_column :users, :instagram, :string
    add_column :users, :twitter, :string
  end

  def change
    rename_column :users, :description, :email
    rename_column :users, :name, :username
    create_table :socials do |t|
      t.string :name
      t.string :link
      t.timestamps
    end
  end
end
