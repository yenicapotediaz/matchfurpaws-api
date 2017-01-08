class RemoveArrayFromAdopterPets < ActiveRecord::Migration
  def change
    change_table(:pets) do |t|
      t.change :photos, :string
      t.change :kids, :string
      t.change :home_type, :string
      t.remove :hypoallergenic
      t.remove :needs_buddy
      t.remove :hours_home_alone
      t.remove :ready_for_adoption
      t.remove :special_needs
      t.rename(:exercie_needs, :exercise_needs)
    end

    change_table(:adopters) do |t|
      t.change :kids, :string
      t.change :ideal_temperament, :string
      t.change :ideal_active_level, :string
      t.remove :hours_away_from_home
    end
  end
end
