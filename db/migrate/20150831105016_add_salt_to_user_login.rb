class AddSaltToUserLogin < ActiveRecord::Migration[5.2]
  def change
    add_column :user_logins, :salt, :string
  end
end
