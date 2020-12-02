class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def self.search(search)
  	Gym.where(['content LIKE ?', "%#{search}%"])
  end
end
