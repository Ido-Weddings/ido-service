class CategoryEnterpriseSerializer < ActiveModel::Serializer
  attributes :id, :base_price, :description, :capacity
  has_one :category
  has_one :enterprise
end
