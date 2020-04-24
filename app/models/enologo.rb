class Enologo < ApplicationRecord
	has_and_belongs_to_many :newspapers
end
