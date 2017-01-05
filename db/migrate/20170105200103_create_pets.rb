class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :photos, array: true
      t.string :est_age
      t.string :type
      t.string :gender
      t.string :breed
      t.string :size
      t.string :hypoallergenic, array: true
      t.boolean :cats
      t.boolean :dogs
      t.boolean :needs_buddy
      t.string :kids, array: true
      t.string :temperament
      t.string :exercie_needs
      t.string :home_type, array: true
      t.integer :hours_home_alone
      t.text :bio
      t.date :intake_date
      t.boolean :ready_for_adoption
      t.integer :adoption_fee
      t.string :special_needs, array: true


      t.belongs_to :shelter
      t.timestamps null: false
    end
  end
end
