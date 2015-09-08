class Word < ActiveRecord::Base
	has_many :definitions
	validates :name, presence: true
end
