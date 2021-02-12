class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.timestamps
    end
  end
end
