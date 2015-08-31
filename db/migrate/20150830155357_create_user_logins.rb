class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :email, :length => 255
      t.string :password, :length => 255
      t.string :image_url
      t.timestamps null: false
    end
  end
end
