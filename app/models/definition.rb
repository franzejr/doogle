class Definition < ActiveRecord::Base
	validates :name, presence: true
end
