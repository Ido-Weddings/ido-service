class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :wedding_date
end
