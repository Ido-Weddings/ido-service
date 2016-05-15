class Message < ApplicationRecord
has_many :pictures
  belongs_to :user
  belongs_to :enterprise
end
