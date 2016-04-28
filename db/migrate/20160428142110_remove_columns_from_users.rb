class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :firstName
  	remove_column	:users, :lastName
  end
end
