class Organisation < ApplicationRecord
  has_many :activities, dependent: :destroy
  validates :name, presence: true

  # if params[:query].present?
  #   @organisations = PgSearch.multisearch(params[:query]).map(&:searchable)
  # else
  #   @organisations = Organisation.all
  # end
end
