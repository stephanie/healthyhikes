class MyHike < ActiveRecord::Base
  belongs_to :parent, :class_name => 'District', :foreign_key => 'parent_id'
end
