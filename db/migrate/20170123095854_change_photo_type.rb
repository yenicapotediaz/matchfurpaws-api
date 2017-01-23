class ChangePhotoType < ActiveRecord::Migration
  def change
    change_table(:pets) do |t|
      t.change :photos, :text
    end
  end
end
