class User < ApplicationRecord
  has_many :ratings
end

class Rating < ApplicationRecord
  belongs_to :beer
  belongs_to :user

  def to_s
    "#{beer.name} #{score}"
  end
end
