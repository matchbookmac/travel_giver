class AddImagesToCountries < ActiveRecord::Migration
  def change
    add_attachment :countries, :attached_image
  end
end
