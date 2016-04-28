class User < ActiveRecord::Base
	has_many :posts

end

class Post < ActiveRecord::Base
	belongs_to :users

	has_many :comments
end

