class Restroom < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :users, through: :reviews
end
