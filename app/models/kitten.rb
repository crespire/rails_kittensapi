class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :cuteness, presence: true
  validates :softness, presence: true
  validates :cuteness, inclusion: { in: 1..5 }
  validates :softness, inclusion: { in: 1..5 }

end
