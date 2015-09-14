class AlterPlacesAddPhotoIdColumn < ActiveRecord::Migration
  def change
    add_column :places, :photo, :integer
  end
end
