class CreateAdopters < ActiveRecord::Migration
  def change
    create_table :adopters do |t|
      t.string :name
      t.string :kids, array: true
      t.boolean :cats
      t.boolean :dogs
      t.string :home_type
      t.string :searching_for
      t.string :ideal_temperament, array: true
      t.string :ideal_active_level, array: true
      t.integer :hours_away_from_home
      t.text :bio

      t.timestamps null: false
    end
  end
end
