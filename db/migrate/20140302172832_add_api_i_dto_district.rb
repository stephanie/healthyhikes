class AddApiIDtoDistrict < ActiveRecord::Migration
  def change
  	add_column :districts, :api_id, :string
  end
end
