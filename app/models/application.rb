class Application < ApplicationRecord
  belongs_to :user
  belongs_to :tattooer

  validates :number_of_months, presence: true
end
