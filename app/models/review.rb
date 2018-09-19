class Review < ApplicationRecord
  belongs_to :user
  validates_presence_of(:restaurant, :revoew, :imageUrl, :rating)
end
