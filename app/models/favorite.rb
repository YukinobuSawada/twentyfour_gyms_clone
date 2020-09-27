class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :gym_comment
	validates_uniqueness_of :gym_comment_id, scope: :user_id
end
