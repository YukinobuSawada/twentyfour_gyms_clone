class Gym < ApplicationRecord
	has_many :machines, dependent: :destroy
	accepts_nested_attributes_for :machines
	has_many :gym_comments,dependent: :destroy
end