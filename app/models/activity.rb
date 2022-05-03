class Activity < ApplicationRecord
  belongs_to :organisation
  has_many :tags, dependent: :destroy
  validates :name, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
