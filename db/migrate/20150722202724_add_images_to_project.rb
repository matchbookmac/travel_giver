class AddImagesToProject < ActiveRecord::Migration
  def change
    add_attachment :projects, :project_image
  end
end
