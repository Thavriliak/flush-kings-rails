class LocationSerializer < ActiveModel::Serializer
  attributes :id, :area
  has_one :user
  has_many :restrooms
end
