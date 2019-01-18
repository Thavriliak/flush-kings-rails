# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :locations
  has_many :restrooms
  # has_many :restrooms, through: :locations
  has_many :locations, through: :restrooms
end
