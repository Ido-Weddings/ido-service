class AdviseSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :enterprise
end
