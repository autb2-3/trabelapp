class Room < ApplicationRecord
    belongs_to :user
    has_many :reserves
    has_one_attached :room_image
end