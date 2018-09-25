class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :country
      t.boolean :newsletter
      t.attachment :avatar
      t.string :password_digest

      t.timestamps
    end
  end
end
