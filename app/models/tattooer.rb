class Tattooer < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :applications
  has_many :users, through: :applications
end
