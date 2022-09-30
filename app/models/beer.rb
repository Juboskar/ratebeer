class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    ratings.average(:score).round(1)
  end

  def to_s
    "#{name} #{brewery.name}"
  end

end