class Enologo < ApplicationRecord
	has_many :EnologoNewspapers, dependent: :destroy
	has_many :notes, dependent: :destroy
	def score(wine)
		nota = Note.where(wine: wine).where(enologo: self)
		if nota.blank?
			return 0
		else
			return nota.first.score
		end
	end
end
