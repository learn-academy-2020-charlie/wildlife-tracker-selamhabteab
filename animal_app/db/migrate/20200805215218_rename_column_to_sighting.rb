class RenameColumnToSighting < ActiveRecord::Migration[6.0]
  def change
    change_column :sightings, :latitude, :string
    change_column :sightings, :longitude, :string
  end
end
