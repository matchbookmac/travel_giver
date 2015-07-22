class Countries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.column :c_name, :string
      t.column :continent, :string
      t.column :c_description, :string

      t.timestamps
    end

    create_table :projects do |t|
      t.column :p_name, :string
      t.column :p_description, :string
      t.column :country_id, :integer

      t.timestamps
    end
  end
end
