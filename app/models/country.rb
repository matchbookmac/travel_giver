class Country < ActiveRecord::Base
  has_many :projects
  validates :c_name, :presence => true
  validates :continent, :presence => true
  validates :c_description, :presence => true

  has_attached_file :attached_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attached_image, :content_type => /\Aimage\/.*\Z/
end
