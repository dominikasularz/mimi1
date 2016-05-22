class Recipe < ActiveRecord::Base
  validates :food, length: { minimum: 4,
  too_short: "4 characters is the minimum allowed" }
end