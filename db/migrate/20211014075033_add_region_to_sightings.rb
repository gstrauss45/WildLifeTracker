class AddRegionToSightings < ActiveRecord::Migration[6.1]
  def change
    add_column :sightings, :region, :string
  end
end
