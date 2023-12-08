class User < ApplicationRecord
    has_many :boats, dependent: :destroy

    validate :name, presence: true, uniqueness: true
end
