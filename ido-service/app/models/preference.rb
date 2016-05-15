class Preference < ApplicationRecord
has_many :category_preferences
  belongs_to :user
end
