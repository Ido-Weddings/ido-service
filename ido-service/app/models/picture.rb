class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :category_enterprise
  belongs_to :message
end
