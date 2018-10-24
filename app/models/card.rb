class Card < ApplicationRecord
	has_many :transacions
	belongs_to :user
end
