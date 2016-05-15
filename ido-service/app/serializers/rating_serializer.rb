class RatingSerializer < ActiveModel::Serializer
  attributes :id, :points
  has_one :user
  has_one :enterprise
end
