class Reservation < ApplicationRecord
    belongs_to :boat

    validates :username, presence: true
    validates :city, presence: true
    validates :date, presence: true
    validates :boat_id, presence: true
    
end
