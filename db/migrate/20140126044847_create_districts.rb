class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :area
      t.integer :aqi
      t.integer :aqhi
      t.string :aqhi_health_risk

      t.timestamps
    end
  end
end
