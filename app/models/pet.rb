class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'spider', 'rabbit', 'snake', 'gold fish']

  validates :name, presence: true
  validates :species, inclusion: {in: Pet::SPECIES}

  def days_ago
    days = Date.today - found_on
    days.to_i
  end
end
