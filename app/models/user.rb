# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :locations
  # has_many :restrooms
  has_many :created_restrooms, class_name: 'Restroom', foreign_key: :user_id
  has_many :reviews
  has_many :restrooms, through: :reviews
end
