class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :area
      t.integer :aqi
      t.integer :aqhi
      t.string :aqhi_health_risk
      t.text :aqi_url
      t.string :aqi_updated_on

      t.timestamps
    end
  end
end
