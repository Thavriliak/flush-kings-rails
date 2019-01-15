class Restroom < ApplicationRecord
    belongs_to :user
    belongs_to :location
    belongs_to :user, through: :location
end
