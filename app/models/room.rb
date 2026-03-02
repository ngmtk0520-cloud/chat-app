class Room < ApplicationRecord
  has_many :room_user, dependent: :destroy 
  has_many :users, through: :room_user
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
