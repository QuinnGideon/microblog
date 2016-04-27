class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_user users: do |t|
  		t.string 		:username
  		t.string 		:password
  end
end
