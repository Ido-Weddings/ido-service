class CategoryPreference < ApplicationRecord
  belongs_to :preference
  belongs_to :category
end
