class Review < ApplicationRecord

RATINGS = [0, 1, 2, 3, 4, 5]

  validates :content, :rating, allow_blank: false, presence: true
  validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }

  belongs_to :restaurant
end

