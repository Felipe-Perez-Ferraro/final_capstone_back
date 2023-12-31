class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :color, presence: true
  validates :rent_price, presence: true, numericality: { greater_than: 0 }
  validates :user_id, presence: true
end
