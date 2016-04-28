class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer	 	:user_id 
  			t.text		:body
  			t.string	:title
  	end
  end
end
