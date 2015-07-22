class Donations2 < ActiveRecord::Migration
  def change
    add_column :projects, :p_donation, :integer
    add_column :projects, :user_id, :integer
    add_column :users, :project_id, :integer
  end
end
