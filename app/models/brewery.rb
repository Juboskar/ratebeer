class Brewery < ApplicationRecord
  include RatingAverage

  validates :name, presence: true
  validates :year, numericality: { greater_than_or_equal_to: 1040,
                                    less_than_or_equal_to: 2022,
                                    only_integer: true }

  validate :year_cannot_be_in_the_future

  def year_cannot_be_in_the_future
    if year > Time.now.year
      errors.add(:year, "can't be in the future")
    end
  end

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def print_report
    puts name
    puts "established at year #{year}"
    puts "number of beers #{beers.count}"
  end

  def restart
    self.year = 2022
    puts "changed year to #{year}"
  end
end
