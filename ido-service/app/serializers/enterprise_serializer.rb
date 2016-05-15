class EnterpriseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :telephone, :cellphone, :email, :address, :latitude, :longitude, :register_id, :is_freelance
end
