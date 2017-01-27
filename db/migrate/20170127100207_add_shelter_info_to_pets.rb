class AddShelterInfoToPets < ActiveRecord::Migration
  def change
    change_table(:pets) do |t|
      t.string :shelter_name
      t.string :shelter_url
    end
  end
end
