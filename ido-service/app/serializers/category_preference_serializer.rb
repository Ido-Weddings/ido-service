class CategoryPreferenceSerializer < ActiveModel::Serializer
  attributes :id, :budget
  has_one :preference
  has_one :category
end
