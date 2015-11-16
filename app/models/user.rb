class User < ActiveRecord::Base
	has_secure_password
	
	has_many :photos
	
	has_many :followers, foreign_key :followee_id, class_name: "Follow"
	has_many :followees, foreign_key :follower_id, class_name: "Follow"
	has_many :followed_photos, through: :followees, source: :photos
end
