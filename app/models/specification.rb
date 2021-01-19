class Specification < ApplicationRecord
  belongs_to :review

  validates :prestacion, 
    presence: true, length: { maximum: 30 }
  validates :valor,
    presence: true, length: { maximum: 30 }
end
