class Country < ActiveRecord::Base
  validates :c_name, :presence => true
  validates :continent, :presence => true
  validates :c_description, :presence => true
end
