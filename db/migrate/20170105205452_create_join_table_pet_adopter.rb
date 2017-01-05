class CreateJoinTablePetAdopter < ActiveRecord::Migration
  def change
    create_join_table :pets, :adopters do |t|
      # t.index [:pet_id, :adopter_id]
      # t.index [:adopter_id, :pet_id]
    end
  end
end
