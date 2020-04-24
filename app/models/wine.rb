class Wine < ApplicationRecord
  has_many :strain_wines
  has_many :strains, through: :strain_wines, dependent: :destroy
  has_many :notes, dependent: :destroy
  validates :name, presence: true
end
