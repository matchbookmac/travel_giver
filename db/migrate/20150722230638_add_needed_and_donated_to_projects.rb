class AddNeededAndDonatedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :donation_count, :integer
    add_column :projects, :total_needed, :integer
    add_column :projects, :total_donated, :integer
  end
end
