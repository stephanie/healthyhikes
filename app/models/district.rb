class District < ActiveRecord::Base
  has_many :my_hikes

  accepts_nested_attributes_for :my_hikes
end