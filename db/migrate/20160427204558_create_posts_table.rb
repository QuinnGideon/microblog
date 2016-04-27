class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :user_posts do |t|
  		t.integer :post_id
  		t.string  :title
  		t.text 		:body
  	end
  end
end
