class Review < ApplicationRecord
  validates_presence_of(
    :restaurant,
    :title,
    :body,
    :imageUrl,
    :alt,
    :rating,
  )
end
