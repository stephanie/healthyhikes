class AddAqiUpdatedOnToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :aqi_updated_on, :text
  end
end
