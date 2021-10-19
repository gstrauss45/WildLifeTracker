class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :date
      t.string :longitude
      t.string :latitude
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
