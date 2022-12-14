module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    return 0 if ratings.empty?

    ratings.average(:score).round(1)
  end
end
