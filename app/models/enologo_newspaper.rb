class EnologoNewspaper < ApplicationRecord
  belongs_to :enologo
  belongs_to :newspaper
  validates :cargo, presence: true
end