class SubCategorySerializer < ActiveModel::Serializer
  attributes :id, :type, :active
  has_one :category
end
