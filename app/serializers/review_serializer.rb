class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :cleanliness, :smell
  has_one :user
  has_one :restroom
end
