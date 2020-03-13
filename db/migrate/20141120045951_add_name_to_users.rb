class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
	add_column :users, :lat, :float
	add_column :users, :lng, :float
	add_column :users, :phone, :string
  end
end
