class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: {in: ['dog', 'cat', 'spider', 'rabbit', 'snake', 'gold fish']}
end
