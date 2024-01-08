class Application < ApplicationRecord
  belongs_to :user
  belongs_to :tattooer

  validates :number_of_months, presence: true

  def friendly_created_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
