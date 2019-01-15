class RestroomSerializer < ActiveModel::Serializer
  attributes :id, :location, :name_of_establishment, :cleanliness, :smell, :number_of_toilets, :handicap_accessible, :baby_care, :hours
  has_one :user
  has_one :location
end
