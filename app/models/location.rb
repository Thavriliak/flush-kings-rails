class Location < ApplicationRecord
    belongs_to :user
    has_many :restrooms
    has_many :users, through: :restrooms
end
