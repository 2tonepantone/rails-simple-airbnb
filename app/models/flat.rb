class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: (10..1000) }
  validates :number_of_guests,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: (1..10) }
end
