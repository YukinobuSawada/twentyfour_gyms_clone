class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
   #geocoded_by :address
   #after_validation :geocode, if: :address_changed?
end
