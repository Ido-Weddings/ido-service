class Enterprise < ApplicationRecord
has_many :advises
has_many :messages
has_many :favorites
has_many :ratings
has_many :category_enterprises
has_one :picture
end
