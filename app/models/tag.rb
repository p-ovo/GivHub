class Tag < ApplicationRecord
  belongs_to :activity
  belongs_to :trait
end
