class Gym < ApplicationRecord
  has_many :machines, dependent: :destroy
  accepts_nested_attributes_for :machines
  has_many :gym_comments, dependent: :destroy
  # geocoded_by :address
  #     after_validation :geocode, if: :address_changed?
  def self.search(search)
  	Gym.where(['content LIKE ?', "%#{search}%"])
  end
end
