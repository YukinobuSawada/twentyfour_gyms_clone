class Gym < ApplicationRecord
	has_many :machines, dependent: :destroy
end
