class PreferenceSerializer < ActiveModel::Serializer
  attributes :id, :guest_amount
  has_one :user
end
