class PictureSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :user
  has_one :category_enterprise
  has_one :message
end
