class RemoveTypeFromPet < ActiveRecord::Migration
  def change
    remove_column :pets, :type, :string
    add_column :pets, :species, :string
  end
end
