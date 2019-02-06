class Restroom < ApplicationRecord
    belongs_to :owner, class_name: 'User', foreign_key: :user_id # this is the creater / owner
    belongs_to :location
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
end
