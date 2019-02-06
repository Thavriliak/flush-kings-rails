class RestroomSerializer < ActiveModel::Serializer
  attributes :id, :location_id, :name_of_establishment, :cleanliness, :smell, :number_of_toilets, :handicap_accessible, :baby_care, :hours, :user_id
  has_many :reviews
end
