class AddAqiUrlToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :aqi_url, :text
  end
end
