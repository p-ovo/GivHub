class Type < ApplicationRecord
  has_many :filters
  has_many :activities, through: :filters
end
