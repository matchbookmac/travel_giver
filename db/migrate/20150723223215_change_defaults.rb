class ChangeDefaults < ActiveRecord::Migration
  def change
    change_column :projects, :total_needed, :integer, :default => 0
    change_column :projects, :donation_count, :integer, :default => 0


  end
end
