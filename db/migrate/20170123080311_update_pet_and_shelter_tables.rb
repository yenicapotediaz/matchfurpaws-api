class UpdatePetAndShelterTables < ActiveRecord::Migration
  def change
    change_table(:pets) do |t|
      t.remove :temperament
      t.change :adoption_fee, :string
      t.string    :adoption_status
      t.string    :location
    end

    change_table(:shelters) do |t|
      t.integer :zip_code
      t.string :city
      t.string :state
    end
  end
end
