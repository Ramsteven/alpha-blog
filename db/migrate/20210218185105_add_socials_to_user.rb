class AddSocialsToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :socials, :user,  foreign_key: true
  end
end
