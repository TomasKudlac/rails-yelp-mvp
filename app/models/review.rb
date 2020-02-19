class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 5 }
  validates :restaurant_id, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validate :rating_limits

  private

  def rating_limits
    if rating.nil?
      errors.add(:rating, 'rating must be between 0 and 5')
    elsif rating > 5 || rating.negative?
      errors.add(:rating, 'rating must be between 0 and 5')
    end
  end
end
