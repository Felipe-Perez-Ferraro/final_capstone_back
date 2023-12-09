class User < ApplicationRecord
  has_many :boats, dependent: :destroy

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable, :validatable, :jwt_authenticatable,
         jwt_revocation_strategy: self

  validates :name, presence: true, uniqueness: true
end
