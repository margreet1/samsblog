class Review < ApplicationRecord
  validates_presence_of(
    :restaurant,
    :title,
    :body,
    :picture,
    :rating,
  )
end
