class CategoryEnterprise < ApplicationRecord
has_many :pictures
  belongs_to :category
  belongs_to :enterprise
end
