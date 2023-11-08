class Capacitor < ApplicationRecord
  validates :description, :price, presence: true
end
