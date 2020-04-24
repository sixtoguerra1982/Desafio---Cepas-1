class Newspaper < ApplicationRecord
	has_many :EnologoNewspapers, dependent: :destroy
end
