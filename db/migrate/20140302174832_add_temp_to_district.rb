class AddTempToDistrict < ActiveRecord::Migration
  def change
  	add_column :districts, :temp, :integer
  end
end
