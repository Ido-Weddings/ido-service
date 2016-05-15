class Category < ApplicationRecord
has_many :category_enterprises
has_many :sub_categories
has_many :category_preferences
end
