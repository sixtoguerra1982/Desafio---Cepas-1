class Note < ApplicationRecord
  belongs_to :enologo
  belongs_to :wine
  validates :score, presence: true, numericality: {less_than_or_equal_to: 100}
end
