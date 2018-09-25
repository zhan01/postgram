class CreatePublishes < ActiveRecord::Migration[5.2]
  def change
    create_table :publishes do |t|
      t.text :description
      t.references :user, foreign_key: true
      t.string :country
      t.attachment :image
      t.boolean :public
      t.integer :views

      t.timestamps
    end
  end
end
