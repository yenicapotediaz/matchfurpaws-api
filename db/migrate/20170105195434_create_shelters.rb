class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :photo
      t.string :address
      t.string :email
      t.string :website
      t.text :bio

      t.timestamps null: false
    end
  end
end
