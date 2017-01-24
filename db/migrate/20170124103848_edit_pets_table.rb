class EditPetsTable < ActiveRecord::Migration
  def change
    change_table(:pets) do |t|
      t.rename(:kids, :kid_ages)
      t.boolean :kid_friendly
    end
  end
end
