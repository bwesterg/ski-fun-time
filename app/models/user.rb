class User < ApplicationRecord
  has_many :favorites
  has_many :trails, through: :favorites
end
