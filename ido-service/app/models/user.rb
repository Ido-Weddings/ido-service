class User < ApplicationRecord
has_many :messages
has_many :advises
has_many :ratings
has_many :favorites
has_many :pictures
has_many :friends
has_one :preference
end
