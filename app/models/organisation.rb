class Organisation < ApplicationRecord
  has_many :activities, dependent: :destroy
  validates :name, presence: true
end
