class Activity < ApplicationRecord
  belongs_to :organisation
  has_many :tags
end
