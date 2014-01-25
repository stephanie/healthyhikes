class CreateMyHikes < ActiveRecord::Migration
  def change
    create_table :my_hikes do |t|
      t.string :hike_name
      t.float :distance_in_km
      t.string :distance_category
      t.integer :difficulty
      t.string :duration
      t.string :elevation_chart
      t.string :start_elevation
      t.string :max_elevation
      t.string :climb
      t.text :description
      t.string :district
      t.string :trail
      t.string :hike_start
      t.string :hike_end

      t.timestamps
    end
  end
end
