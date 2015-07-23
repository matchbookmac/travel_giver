class ChangeTotalDonated < ActiveRecord::Migration
  def change
    change_column :projects, :total_donated, :integer, :default => 0
    change_column :projects, :total_needed, :integer, :default => nil

  end
end
