class SubCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :active
  has_one :category
end
