class User < ApplicationRecord
  has_many :boats, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
