class Room < ApplicationRecord
  has_many :room_user
  has_many :users, through: :room_user
  has_many :messages

  validates :name, presence: true
end
