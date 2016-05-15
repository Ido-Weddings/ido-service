class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :posted_by_user
  has_one :user
  has_one :enterprise
end
