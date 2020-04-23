class Strain < ApplicationRecord
  has_many :strain_wines
  has_many :wines, through: :strain_wines, dependent: :destroy
  validates :name, presence: true
end
