class AddImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :p_image, :string
  end
end
