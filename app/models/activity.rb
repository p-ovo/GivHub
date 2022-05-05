class Activity < ApplicationRecord
  belongs_to :organisation
  has_many :tags, dependent: :destroy
  validates :name, :description, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description ],
    associated_against: {
      organisation: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
