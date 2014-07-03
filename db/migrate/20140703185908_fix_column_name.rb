class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :clubs, :lat, :latitude
    rename_column :clubs, :lng, :longitude
  end
end
